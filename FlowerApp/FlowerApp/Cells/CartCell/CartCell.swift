//
//  CartCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 28.12.21.
//

import UIKit
import SDWebImage

class CartCell: UITableViewCell {
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var cellBackgroundShadowView: UIView!
    @IBOutlet weak var cartProductNameLabel: UILabel!
    @IBOutlet weak var cartProductImageView: UIImageView!
    @IBOutlet weak var cartTotalCostLabel: UILabel!
    @IBOutlet weak var cartProductCountField: UITextField!
    @IBOutlet weak var checkboxButton: UIButton!
    @IBOutlet weak var productAmountField: UITextField!
    
    var totalCost: Double?
    var cartProduct = CartProduct()
    var product = Product()
    var productAmount: Int? {
        didSet {
            productAmountField.text = "\(productAmount ?? 1)"
            RealmManager.shared.changeProductCount(product: cartProduct, count: productAmount ?? 1)
            cartTotalCostLabel.text = "\(cartProduct.productCost * Double(cartProduct.count)) РУБ."
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellBackgroundView.clipsToBounds = true
        cellBackgroundView.addShadowAndCornerRadius()
        cellBackgroundShadowView.addShadowAndCornerRadius()
        
        checkboxButton.contentVerticalAlignment = .fill
        checkboxButton.contentHorizontalAlignment = .fill
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setupCell(_ cartProduct: CartProduct, _ product: Product) {
        cartProductNameLabel.text = cartProduct.productName
        productAmount = cartProduct.count
        cartTotalCostLabel.text = "\(cartProduct.productCost * Double(cartProduct.count)) РУБ."
        cartProductCountField.text = "\(cartProduct.count)"
        if let productImageUrls = product.photos {
            cartProductImageView.sd_setImage(with: URL(string: productImageUrls[0]))
        }
    }
    
    @IBAction func productAmountIncrease(_ sender: Any) {
        guard let number = productAmountField.text, var amount = Int(number) else { return }
        if amount >= 1, amount < 99 {
            amount += 1
            productAmount = amount
            productAmountField.text = "\(amount)"
        }
    }
    
    @IBAction func productAmountDecrease(_ sender: Any) {
        guard let number = productAmountField.text, var amount = Int(number) else { return }
        if amount <= 99, amount > 1 {
            amount -= 1
            productAmount = amount
            productAmountField.text = "\(amount)"
        }
    }
}
