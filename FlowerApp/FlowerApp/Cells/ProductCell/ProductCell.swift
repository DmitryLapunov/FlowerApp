//
//  ProductCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productCellBackgroundView: UIView!
    @IBOutlet weak var productPriceBackgroundView: UIView!
    
    var productImageForFavourite = ""
    
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
        RealmManager.shared.writeProduct(product: ProductObject(productName: productNameLabel.text ?? "Нет названия", productDescriprion: productDescriptionLabel.text ?? "Нет описания", productPrice: productPriceLabel.text ?? "Нет цены", productImage: productImageForFavourite))
    }
    
}
