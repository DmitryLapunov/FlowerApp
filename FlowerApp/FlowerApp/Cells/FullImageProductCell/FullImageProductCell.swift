//
//  FullImageProductCell.swift
//  FlowerApp
//
//  Created by Евгений on 8.01.22.
//

import UIKit

class FullImageProductCell: UICollectionViewCell {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fullImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        scrollView.maximumZoomScale = 4
        scrollView.minimumZoomScale = 1
        scrollView.delegate = self
    }
}

extension FullImageProductCell: UIScrollViewDelegate {
        func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return fullImage
        }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
             if scrollView.zoomScale > 1 {
                 if let image = fullImage.image {
                     let ratioW = fullImage.frame.width / image.size.width
                     let ratioH = fullImage.frame.height / image.size.height
                     let ratio = ratioW < ratioH ? ratioW : ratioH
                     let newWidth = image.size.width * ratio
                     let newHeight = image.size.height * ratio
                     let conditionLeft = newWidth*scrollView.zoomScale > fullImage.frame.width
                     let left = 0.5 * (conditionLeft ? newWidth - fullImage.frame.width : (scrollView.frame.width - scrollView.contentSize.width))
                     let conditioTop = newHeight*scrollView.zoomScale > fullImage.frame.height
                     
                     let top = 0.5 * (conditioTop ? newHeight - fullImage.frame.height : (scrollView.frame.height - scrollView.contentSize.height))
                     scrollView.contentInset = UIEdgeInsets(top: top, left: left, bottom: top, right: left)
                 }
             } else {
                 scrollView.contentInset = .zero
             }
         }
}

