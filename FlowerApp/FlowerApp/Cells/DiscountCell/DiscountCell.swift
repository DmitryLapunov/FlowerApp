//
//  DiscountCell.swift
//  FlowerApp
//
//  Created by Евгений on 14.12.21.
//

import UIKit

class DiscountCell: UICollectionViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var discountArray = ["", "", ""]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor(named: "TertiaryColor")
        let nib = UINib(nibName: String(describing: SubDiscountCell.self), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: String(describing: SubDiscountCell.self))
    }
}

extension DiscountCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return discountArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SubDiscountCell.self), for: indexPath)
        guard let subDiscountCell = cell as? SubDiscountCell else { return cell}
        return subDiscountCell
    }
}

