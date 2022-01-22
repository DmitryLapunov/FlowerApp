//
//  SubDiscountCell.swift
//  FlowerApp
//
//  Created by Евгений on 17.12.21.
//

import UIKit

class SubDiscountCell: UICollectionViewCell {

    @IBOutlet weak var discountLabelView: UIView!
    @IBOutlet weak var backgroubdView: UIView!
    @IBOutlet weak var discountImage: UIImageView!
    @IBOutlet weak var discountName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }

    func setupCell() {
        discountImage.layer.cornerRadius = 10
        
        backgroubdView.addShadowAndCornerRadius()
        
        discountLabelView.layer.cornerRadius = 10
        discountLabelView.backgroundColor = UIColor.black.withAlphaComponent(0.55)
        
        discountName.textColor = UIColor.white
    }
}

