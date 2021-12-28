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
        discountCollectionView.delegate = self
        discountCollectionView.backgroundColor = UIColor.tertiaryColor
        let nib = UINib(nibName: String(describing: SubDiscountCell.self), bundle: nil)
        discountCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: SubDiscountCell.self))
       
    }
}


extension DiscountCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return discounts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SubDiscountCell.self), for: indexPath)
        guard let subDiscountCell = cell as? SubDiscountCell else { return cell}
        
        if let urlString = discounts[indexPath.row].urlPicture {
            if let url = URL(string: urlString) {
                subDiscountCell.discountImage.sd_setImage(with: url )
            }
        }
        
        if let discountName = discounts[indexPath.row].subtitle {
            subDiscountCell.discountName.text = discountName
        }
        
        return subDiscountCell
    }
}

extension DiscountCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Int(UIScreen.main.bounds.width) - 10, height: Int(discountCollectionView.bounds.height))
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let webString = discounts[indexPath.row].newsLink else { return }
        guard let webURL = URL(string: webString) else { return }
        let application = UIApplication.shared
        if application.canOpenURL(webURL) {
            application.open(webURL)
        }
        
        discountCollectionView.reloadData()
        
    }
}

