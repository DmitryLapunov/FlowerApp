//
//  CatalogVC+Configure.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 3.12.21.
//

import Foundation
import UIKit

extension CatalogVC {
    func setupCollectionView() {
        catalogCollectionView.dataSource = self
        catalogCollectionView.delegate = self
        let nib = UINib(nibName: String(describing: CategoryCell.self), bundle: nil)
        let discoutNib = UINib(nibName: String(describing: DiscountCell.self), bundle: nil)
        catalogCollectionView.register(discoutNib, forCellWithReuseIdentifier: String(describing: DiscountCell.self))
        catalogCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: CategoryCell.self))
        catalogCollectionView.backgroundColor = UIColor.tertiaryColor
        
        let compositionalLayout: UICollectionViewCompositionalLayout = {
            
            let fullVerticalItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalWidth(1))
            let fullVerticalItem = NSCollectionLayoutItem(layoutSize: fullVerticalItemSize)
            
            let smallVerticalItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
            let smallVerticalItem = NSCollectionLayoutItem(layoutSize: smallVerticalItemSize)
            
            let smallVerticalItemGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalWidth(1))
            let smallVerticalItemGroup = NSCollectionLayoutGroup.vertical(layoutSize: smallVerticalItemGroupSize, subitems: [smallVerticalItem])
            
            let fullVerticalItemOnLeftGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(2/7))
            let fullVerticalItemOnLeftGroup = NSCollectionLayoutGroup.horizontal(layoutSize: fullVerticalItemOnLeftGroupSize, subitems: [fullVerticalItem, smallVerticalItemGroup])
            
            let fullVerticalItemOnRightGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(2/7))
            let fullVerticalItemOnRightGroup = NSCollectionLayoutGroup.horizontal(layoutSize: fullVerticalItemOnRightGroupSize, subitems: [smallVerticalItemGroup, fullVerticalItem])
            
            let fullHorizontalItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1/2))
            let fullHorizontalItem = NSCollectionLayoutItem(layoutSize: fullHorizontalItemSize)
            
            let smallHorizontalItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalWidth(1/2))
            let smallHorizontalItem = NSCollectionLayoutItem(layoutSize: smallHorizontalItemSize)
            
            let smallHorizontalItemGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1/2))
            let smallHorizontalItemGroup = NSCollectionLayoutGroup.horizontal(layoutSize: smallHorizontalItemGroupSize, subitems: [smallHorizontalItem])
            
            let fullHorizontalItemUpperGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(2/7))
            let fullHorizontalItemUpperGroup = NSCollectionLayoutGroup.vertical(layoutSize: fullHorizontalItemUpperGroupSize, subitems: [fullHorizontalItem, smallHorizontalItemGroup])
            
            let categoriesGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(3.5))
            let categoriesGroup = NSCollectionLayoutGroup.vertical(layoutSize: categoriesGroupSize, subitems: [
                discounts.isEmpty ? smallHorizontalItemGroup : fullHorizontalItemUpperGroup,
                fullVerticalItemOnLeftGroup,
                fullVerticalItemOnRightGroup,
                smallHorizontalItemGroup,
                fullHorizontalItem ])
            
            let section = NSCollectionLayoutSection(group: categoriesGroup)
            return UICollectionViewCompositionalLayout(section: section)
        }()
        catalogCollectionView.collectionViewLayout = compositionalLayout
    }
}
 
