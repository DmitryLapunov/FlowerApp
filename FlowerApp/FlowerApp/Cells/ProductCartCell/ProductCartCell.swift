//
//  ProductCartCell.swift
//  FlowerApp
//
//  Created by Евгений on 29.12.21.
//

import UIKit

class ProductCartCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImage.layer.cornerRadius = 12
    }

}
