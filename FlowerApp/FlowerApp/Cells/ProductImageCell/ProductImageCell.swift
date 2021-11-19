//
//  ProductImageCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 19.11.21.
//

import UIKit

class ProductImageCell: UICollectionViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        productImageView.layer.cornerRadius = 10
    }

}
