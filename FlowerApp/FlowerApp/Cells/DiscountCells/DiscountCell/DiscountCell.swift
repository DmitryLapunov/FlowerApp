//
//  DiscountCell.swift
//  FlowerApp
//
//  Created by Евгений on 14.12.21.
//

import UIKit

class DiscountCell: UICollectionViewCell {
    
    @IBOutlet weak var discountCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        discountCollectionView.dataSource = self
        discountCollectionView.delegate = self
        discountCollectionView.backgroundColor = UIColor.tertiaryColor
        let nib = UINib(nibName: String(describing: SubDiscountCell.self), bundle: nil)
        discountCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: SubDiscountCell.self))
        pageControl.isHidden = discounts.count == 1
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
        guard let webString = discounts[indexPath.row].newsLink, !webString.isEmpty else {
            discountCollectionView.reloadData()
            return
        }
        guard let webURL = URL(string: webString) else { return }
        let application = UIApplication.shared
        if application.canOpenURL(webURL) {
            application.open(webURL)
        }
        discountCollectionView.reloadData()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if scrollView == self.discountCollectionView {
            pageControl.currentPage = Int(scrollView.contentOffset.x) /  Int(scrollView.frame.width)
        }
    }
}

