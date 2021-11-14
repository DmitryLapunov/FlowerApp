//
//  CategoryCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 14.11.21.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        cellBackgroundView.layer.shadowColor = UIColor.black.cgColor
//        cellBackgroundView.layer.shadowOpacity = 0.05
//        cellBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 1)
//        cellBackgroundView.layer.shadowRadius = 3
        
        cellBackgroundView.layer.cornerRadius = 10
        categoryImageView.layer.cornerRadius = 10
    }
    
    func setupCategoryCell(category: CategoryType) {
        switch category {
        case .basketsWithFlowers:
            categoryImageView.image = UIImage(named: "icon_baskets_with_flowers")
        case .bridalBouquet:
            categoryImageView.image = UIImage(named: "icon_bridal_bouquet")
        case .bouquets:
            categoryImageView.image = UIImage(named: "icon_bouquets")
        case .driedFlowersBouquets:
            categoryImageView.image = UIImage(named: "icon_dried_flowers_bouquets")
        case .flowersInABox:
            categoryImageView.image = UIImage(named: "icon_flowers_in_a_box")
        case .forLovers:
            categoryImageView.image = UIImage(named: "icon_for_lovers")
        case .marchEight:
            categoryImageView.image = UIImage(named: "icon_march_8")
        case .edibleBouquets:
            categoryImageView.image = UIImage(named: "icon_edible_bouquets")
        case .balloons:
            categoryImageView.image = UIImage(named: "icon_balloons")
        case .presents:
            categoryImageView.image = UIImage(named: "icon_presents")
        case .christmasAndNewYear:
            categoryImageView.image = UIImage(named: "icon_christmas_and_new_year")
        }
    }
}
