//
//  CartCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 28.12.21.
//

import UIKit

class CartCell: UITableViewCell {
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var cellBackgroundShadowView: UIView!
    @IBOutlet weak var cartProductNameLabel: UILabel!
    @IBOutlet weak var cartProductImageView: UIImageView!
    @IBOutlet weak var cartTotalCostLabel: UILabel!
    @IBOutlet weak var cartProductCountField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellBackgroundView.clipsToBounds = true
        cellBackgroundView.addShadowAndCornerRadius()
        cellBackgroundShadowView.addShadowAndCornerRadius()
    }
    
    func setupCell(_ object: CartProduct) {
        cartProductNameLabel.text = object.productName
        cartTotalCostLabel.text = "\(object.productCost * Double(object.count)) РУБ."
        cartProductCountField.text = "\(object.count)"
    }
}
