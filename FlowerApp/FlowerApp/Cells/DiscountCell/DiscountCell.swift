//
//  DiscountCell.swift
//  FlowerApp
//
//  Created by Евгений on 14.12.21.
//

import UIKit

class DiscountCell: UICollectionViewCell {

    @IBOutlet weak var discountCollectionView: UICollectionView!
    
//    var cellWidth: Int = 300
    
    override func awakeFromNib() {
        super.awakeFromNib()
        discountCollectionView.dataSource = self
        discountCollectionView.backgroundColor = UIColor(named: "TertiaryColor")
        let nib = UINib(nibName: String(describing: SubDiscountCell.self), bundle: nil)
        discountCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: SubDiscountCell.self))
        
        let layout = discountCollectionView.collectionViewLayout
        if let flowLayout = layout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: cellWidth, height: discountCollectionView.frame.height)
        }
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


