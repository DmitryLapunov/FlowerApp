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
    @IBOutlet weak var categoryTitleView: UIView!
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    var category: CategoryType?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellBackgroundView.layer.cornerRadius = 10
        categoryImageView.layer.cornerRadius = 10
        categoryTitleView.layer.cornerRadius = 10
        
        categoryTitleView.layer.shadowColor = UIColor.black.cgColor
        categoryTitleView.layer.shadowOpacity = 0.25
        categoryTitleView.layer.shadowRadius = 3
        categoryTitleView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        cellBackgroundView.layer.shadowColor = UIColor.black.cgColor
        cellBackgroundView.layer.shadowOpacity = 0.15
        cellBackgroundView.layer.shadowRadius = 2
        cellBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        guard let cellCategory = category else { return }
        setupCategoryCell(category: cellCategory)
    }
    
    func setupCategoryCell(category: CategoryType) {
        switch category {
        case .basketsWithFlowers:
            categoryImageView.image = UIImage(named: "icon_baskets_with_flowers")
            categoryTitleLabel.text = category.rawValue
            cellBackgroundView.backgroundColor = UIColor(named: "SecondaryColor")
        case .bridalBouquet:
            categoryImageView.image = UIImage(named: "icon_bridal_bouquet")
            categoryTitleLabel.text = category.rawValue
            cellBackgroundView.backgroundColor = UIColor(named: "CustomPinkColor")
        case .bouquets:
            categoryImageView.image = UIImage(named: "icon_bouquets")
            categoryTitleLabel.text = category.rawValue
            cellBackgroundView.backgroundColor = UIColor(named: "CustomGreenColor")
        case .driedFlowersBouquets:
            categoryImageView.image = UIImage(named: "icon_dried_flowers_bouquets")
            categoryTitleLabel.text = category.rawValue
        case .flowersInABox:
            categoryImageView.image = UIImage(named: "icon_flowers_in_a_box")
            categoryTitleLabel.text = category.rawValue
            cellBackgroundView.backgroundColor = .white
        case .forLovers:
            categoryImageView.image = UIImage(named: "icon_for_lovers")
            categoryTitleLabel.text = category.rawValue
        case .marchEight:
            categoryImageView.image = UIImage(named: "icon_march_8")
            categoryTitleLabel.text = category.rawValue
        case .edibleBouquets:
            categoryImageView.image = UIImage(named: "icon_edible_bouquets")
            categoryTitleLabel.text = category.rawValue
        case .balloons:
            categoryImageView.image = UIImage(named: "icon_balloons")
            categoryTitleLabel.text = category.rawValue
        case .presents:
            categoryImageView.image = UIImage(named: "icon_presents")
            categoryTitleLabel.text = category.rawValue
        case .christmasAndNewYear:
            categoryImageView.image = UIImage(named: "icon_christmas_and_new_year")
            categoryTitleLabel.text = category.rawValue
        }
    }
}
