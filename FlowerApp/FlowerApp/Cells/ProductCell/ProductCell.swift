//
//  ProductCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

protocol AlertShowerProduct {
    func showAlert(alert: UIAlertController )
}

protocol ReloadCellCategory: AnyObject {
    func reloadCell()
}

import UIKit
import Realm
import RealmSwift

class ProductCell: UITableViewCell {
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productCellBackgroundView: UIView!
    @IBOutlet weak var productPriceBackgroundView: UIView!
    @IBOutlet weak var addToFavouriteButtonOutlet: UIButton!
    
    var alertDelegate: AlertShowerProduct?
    var delegate: ReloadCellCategory?
    var product: ProductObject?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        productImageView.layer.cornerRadius = 10
        productCellBackgroundView.layer.cornerRadius = 10
        productPriceBackgroundView.layer.cornerRadius = 10
        
        productPriceBackgroundView.layer.shadowColor = UIColor.black.cgColor
        productPriceBackgroundView.layer.shadowOpacity = 0.25
        productPriceBackgroundView.layer.shadowRadius = 3
        productPriceBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
                
        productCellBackgroundView.layer.shadowColor = UIColor.black.cgColor
        productCellBackgroundView.layer.shadowOpacity = 0.15
        productCellBackgroundView.layer.shadowRadius = 2
        productCellBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    
    @IBAction func addToFavourite(_ sender: Any) {
        
        if addToFavouriteButtonOutlet.imageView?.image == UIImage(systemName: "bookmark") {
            guard let product = product else { return }
            RealmManager.shared.writeProduct(product: product)
            PopupController.showPopup()
            delegate?.reloadCell()
        } else {
            
            guard let name = productNameLabel.text else { return }
            let alert = UIAlertController(title: "Подтвердите действие", message: "Вы действительно хотите удалить «\(name)» из избранного", preferredStyle: .alert)
            let noAction = UIAlertAction(title: "Нет", style: .default, handler: nil)
            let yesAction = UIAlertAction(title: "Да", style: .destructive, handler: { action in
                RealmManager.shared.deleteProduct(productName: name)
                self.delegate?.reloadCell()
            })
            alert.addAction(yesAction)
            alert.addAction(noAction)
            self.alertDelegate?.showAlert(alert: alert)
        }
        
    }
    
}
