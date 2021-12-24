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
        backgroubdView.layer.cornerRadius = 12
        discountImage.layer.cornerRadius = 12
        
        backgroubdView.layer.shadowColor = UIColor.black.cgColor
        backgroubdView.layer.shadowOpacity = 0.25
        backgroubdView.layer.shadowRadius = 3
        backgroubdView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        discountLabelView.layer.cornerRadius = 12
        discountLabelView.backgroundColor = UIColor.black.withAlphaComponent(0.55)
        
        discountName.textColor = UIColor(named: "SecondaryColor")
    }
}

