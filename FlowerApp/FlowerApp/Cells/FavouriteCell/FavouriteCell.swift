//
//  FavouriteCell.swift
//  FlowerApp
//
//  Created by Евгений on 20.11.21.
//

protocol ReloadBadgeFavourite {
    func reloadBadge(count: String)
}

protocol AlertShowerFavourite {
    func showAlert(alert: UIAlertController )
}

protocol ReloadCellFavourite: AnyObject {
    func reloadCell()
}

import UIKit

class FavouriteCell: UITableViewCell {

    
    @IBOutlet weak var favouriteCellBackgroundView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceBackground: UIView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    
    var badgeDelegate: ReloadBadgeFavourite?
    var delegate: ReloadCellFavourite?
    var alertDelegate: AlertShowerFavourite?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
       
    }

    func setupCell() {
        contentView.backgroundColor = UIColor.tertiaryColor
        
        productImage.layer.cornerRadius = 10
        favouriteCellBackgroundView.layer.cornerRadius = 10
        priceBackground.layer.cornerRadius = 10
        
        priceBackground.layer.shadowColor = UIColor.black.cgColor
        priceBackground.layer.shadowOpacity = 0.25
        priceBackground.layer.shadowRadius = 3
        priceBackground.layer.shadowOffset = CGSize(width: 0, height: 2)
                
        favouriteCellBackgroundView.layer.shadowColor = UIColor.black.cgColor
        favouriteCellBackgroundView.layer.shadowOpacity = 0.15
        favouriteCellBackgroundView.layer.shadowRadius = 2
        favouriteCellBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    
    @IBAction func deleteFromFavourite(_ sender: Any) {
        guard let name = productNameLabel.text else { return }
        let alert = UIAlertController(title: "", message: "Вы действительно хотите удалить «\(name)» из избранного?", preferredStyle: .alert)
        let noAction = UIAlertAction(title: "Нет", style: .default, handler: nil)
        let yesAction = UIAlertAction(title: "Да", style: .destructive, handler: { action in
            RealmManager.shared.deleteBookmarks(productName: name)
            self.delegate?.reloadCell()
        })
        alert.addAction(yesAction)
        alert.addAction(noAction)
        self.alertDelegate?.showAlert(alert: alert)
    }
    
    @IBAction func addToCart(_ sender: Any) {
        let filterProduct = arrayGlobalProducts.first{ $0.itemName == productNameLabel.text}
        guard let product = filterProduct, let productName = product.itemName, let cost = product.cost else {
            return
        }
        let productToCart = CartProduct(productName: productName, count: 1, productCost: cost)
        RealmManager.shared.writeCart(product: productToCart)
        setBadge()
        PopupController.showPopup(message: "Товар добавлен в корзину")
    }
    
    private func setBadge() {
        let badge = RealmManager.shared.getCart().count
        self.badgeDelegate?.reloadBadge(count: String(badge))
    }
}
