//
//  FullImageController.swift
//  FlowerApp
//
//  Created by Евгений on 6.01.22.
//

import UIKit
import SDWebImage

class FullImageController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fullImage: UIImageView!
    
    var photosArray: [String] = []
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullImage.sd_setImage(with: URL(string: photosArray[count]))
        fullImage.isUserInteractionEnabled = true
        createSwipe()
        scrollView.maximumZoomScale = 4
        scrollView.minimumZoomScale = 1
        scrollView.delegate = self
        photoLabel.text = "Фото \(count + 1) из \(photosArray.count)"
    }
    
    private func createSwipe() {
        var swipe = UISwipeGestureRecognizer(target: self, action: #selector(setupDismissSwipe))
        swipe.direction = .down
        fullImage.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(setupDismissSwipe))
        swipe.direction = .left
        fullImage.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(setupDismissSwipe))
        swipe.direction = .right
        fullImage.addGestureRecognizer(swipe)
        
    }
    
    
    @objc private func setupDismissSwipe(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction {
        case .down:
            self.dismiss(animated: true, completion: nil)
        case .left:
            if count < photosArray.count {
                if count + 1 < photosArray.count {
                    count += 1
                }
                fullImage.sd_setImage(with: URL(string: photosArray[count]))
                photoLabel.text = "Фото \(count + 1) из \(photosArray.count)"
               
            }
        case .right:
            if count > 0 {
                if count - 1 >= 0 {
                    count -= 1
                }
                fullImage.sd_setImage(with: URL(string: photosArray[count]))
                photoLabel.text = "Фото \(count + 1) из \(photosArray.count)"
            }
        default:
            break
        }
    }
    
    @IBAction func dissmisAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension FullImageController: UIScrollViewDelegate {
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
