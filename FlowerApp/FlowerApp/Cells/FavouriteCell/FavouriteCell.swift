//
//  FavouriteCell.swift
//  FlowerApp
//
//  Created by Евгений on 20.11.21.
//

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
    
    var delegate: ReloadCellFavourite?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }

    func setupCell() {
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
        RealmManager.shared.deleteProduct(productName: name)
        delegate?.reloadCell()
    }
    
    @IBAction func addToCart(_ sender: Any) {
    }
    
}
