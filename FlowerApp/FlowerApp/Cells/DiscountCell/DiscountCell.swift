//
//  DiscountCell.swift
//  FlowerApp
//
//  Created by Евгений on 14.12.21.
//

import UIKit

class DiscountCell: UICollectionViewCell {

    @IBOutlet weak var discountCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        discountCollectionView.dataSource = self
        discountCollectionView.backgroundColor = UIColor(named: "TertiaryColor")
        let nib = UINib(nibName: String(describing: SubDiscountCell.self), bundle: nil)
        discountCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: SubDiscountCell.self))
        discountCollectionView.delegate = self
//        let layout = discountCollectionView.collectionViewLayout
//        if let flowLayout = layout as? UICollectionViewFlowLayout {
//            flowLayout.estimatedItemSize = CGSize(width: Int(UIScreen.main.bounds.width) - 10, height: Int(discountCollectionView.bounds.height))
//        }
    }
}

extension DiscountCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return discounts.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SubDiscountCell.self), for: indexPath)
        guard let subDiscountCell = cell as? SubDiscountCell else { return cell}
        return subDiscountCell
    }
}

extension DiscountCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Int(UIScreen.main.bounds.width) - 10, height: Int(discountCollectionView.bounds.height))
    }
}

