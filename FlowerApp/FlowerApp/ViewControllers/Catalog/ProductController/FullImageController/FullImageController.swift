//
//  FullImageController.swift
//  FlowerApp
//
//  Created by Евгений on 6.01.22.
//

import UIKit
import SDWebImage

class FullImageController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var photoLabel: UILabel!
    
    var photosArray: [String] = []
    var count = 0
    private var didLayoutFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSwipe()
        let nib = UINib(nibName: String(describing: FullImageProductCell.self), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: String(describing: FullImageProductCell.self))
        collectionView.dataSource = self
        collectionView.delegate = self
        photoLabel.text = "Фото \(count + 1) из \(photosArray.count)"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if !didLayoutFlag {
            collectionView.scrollToItem(at: NSIndexPath(row: count, section: 0) as IndexPath, at: [] ,animated: false)
            didLayoutFlag = true
        }
    }
    
    private func createSwipe() {
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(setupDismissSwipe))
        swipe.direction = .down
        collectionView.addGestureRecognizer(swipe)
    }
    
    @objc private func setupDismissSwipe(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction {
        case .down:
            self.dismiss(animated: true, completion: nil)
        default:
            break
        }
    }
    
    @IBAction func dissmisAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}


extension FullImageController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photosArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FullImageProductCell.self), for: indexPath)
        guard let fullImageCell = cell as? FullImageProductCell else { return cell}
        fullImageCell.fullImage.sd_setImage(with: URL(string: photosArray[indexPath.row]))
        return fullImageCell
    }
}

extension FullImageController: UICollectionViewDelegateFlowLayout {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var visibleRect = CGRect()
        visibleRect.origin = collectionView.contentOffset
        visibleRect.size = collectionView.bounds.size
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        guard let indexPath = collectionView.indexPathForItem(at: visiblePoint) else { return }
        photoLabel.text = "Фото \(indexPath.row + 1) из \(photosArray.count)"
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

