//
//  CatalogVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 13.11.21.
//

import UIKit

class CatalogVC: UIViewController {
    @IBOutlet weak var catalogCollectionView: UICollectionView!
    
    let categories = CategoryType.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Каталог"
        setupCollectionView()
        
        print(categories.count)
    }
    
    func setupCollectionView() {
        catalogCollectionView.dataSource = self
        catalogCollectionView.delegate = self
        let nib = UINib(nibName: String(describing: CategoryCell.self), bundle: nil)
        catalogCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: CategoryCell.self))
        catalogCollectionView.backgroundColor = UIColor(named: "TertiaryColor")
        
        let compositionalLayout: UICollectionViewCompositionalLayout = {
            let horizontalGroupItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalWidth(1/2))
            let horizontalGroupItem = NSCollectionLayoutItem(layoutSize: horizontalGroupItemSize)
            
            let horizontalGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1/2))
            let horizontalGroup = NSCollectionLayoutGroup.horizontal(layoutSize: horizontalGroupSize, subitems: [horizontalGroupItem])
            
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
            
            let fullHorizontalItemAboveGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(2/7))
            let fullHorizontalItemAboveGroup = NSCollectionLayoutGroup.vertical(layoutSize: fullHorizontalItemAboveGroupSize, subitems: [smallHorizontalItemGroup, fullHorizontalItem])
            
            let categoriesGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(3.5))
            let categoriesGroup = NSCollectionLayoutGroup.vertical(layoutSize: categoriesGroupSize, subitems: [horizontalGroup, fullVerticalItemOnLeftGroup, fullVerticalItemOnRightGroup, fullHorizontalItemAboveGroup])
            
            let section = NSCollectionLayoutSection(group: categoriesGroup)
            return UICollectionViewCompositionalLayout(section: section)
        }()
        catalogCollectionView.collectionViewLayout = compositionalLayout
    }
}

extension CatalogVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CategoryCell.self), for: indexPath)
        guard let categoryCell = cell as? CategoryCell else { return cell }
        categoryCell.setupCategoryCell(category: categories[indexPath.row])
        return categoryCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}