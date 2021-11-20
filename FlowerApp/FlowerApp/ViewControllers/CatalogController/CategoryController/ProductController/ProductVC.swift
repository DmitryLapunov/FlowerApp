//
//  ProductVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 19.11.21.
//

import UIKit

class ProductVC: UIViewController {
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImagesBackgroundView: UIView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    @IBOutlet weak var addToCartBackgroundView: UIView!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var productAmountField: UITextField!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productCompositionLabel: UILabel!
    @IBOutlet weak var productPackageLabel: UILabel!
    @IBOutlet weak var productSizeLabel: UILabel!
    @IBOutlet weak var productAboutItemLabel: UILabel!
    @IBOutlet weak var scrollViewHeightConstraint: NSLayoutConstraint!
    
    var product: Product?
    var productImages: [String] = []
    var productAmount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(addToFavorites), imageName: "bookmark")
        
        productImagesBackgroundView.layer.cornerRadius = 10
        productImageView.layer.cornerRadius = 10
        addToCartBackgroundView.layer.cornerRadius = 10
        
        addToCartButton.tintColor = UIColor(named: "MainColor")
        addToCartButton.layer.shadowColor = UIColor.black.cgColor
        addToCartButton.layer.shadowOpacity = 0.15
        addToCartButton.layer.shadowRadius = 2
        addToCartButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        productImagesBackgroundView.layer.shadowColor = UIColor.black.cgColor
        productImagesBackgroundView.layer.shadowOpacity = 0.15
        productImagesBackgroundView.layer.shadowRadius = 2
        productImagesBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        addToCartBackgroundView.layer.shadowColor = UIColor.black.cgColor
        addToCartBackgroundView.layer.shadowOpacity = 0.15
        addToCartBackgroundView.layer.shadowRadius = 2
        addToCartBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        guard let productItem = product else { return }
        setupProductPage(product: productItem)
        setupCollectionView()
        
        if let font = UIFont(name: "Open Sans", size: 17.0),
           let compositionText = productCompositionLabel.text,
           let packageText = productPackageLabel.text,
           let sizeText = productSizeLabel.text,
           let aboutItemText = productAboutItemLabel.text {
            scrollViewHeightConstraint.constant = compositionText.height(withConstrainedWidth: productCompositionLabel.frame.width, font: font) + packageText.height(withConstrainedWidth: productPackageLabel.frame.width, font: font) + sizeText.height(withConstrainedWidth: productSizeLabel.frame.width, font: font) + aboutItemText.height(withConstrainedWidth: productAboutItemLabel.frame.width, font: font) + 90
        }
    }
    
    @IBAction func addToCartAction(_ sender: Any) {
        
    }
    
    @IBAction func productAmountIncrease(_ sender: Any) {
        guard let number = productAmountField.text, var amount = Int(number) else { return }
        if amount >= 1, amount < 99 {
            amount += 1
            productAmount = amount
            productAmountField.text = "\(amount)"
        }
    }
    
    @IBAction func productAmountDecrease(_ sender: Any) {
        guard let number = productAmountField.text, var amount = Int(number) else { return }
        if amount <= 99, amount > 1 {
            amount -= 1
            productAmount = amount
            productAmountField.text = "\(amount)"
        }
    }
    
    func setupCollectionView() {
        imagesCollectionView.dataSource = self
        imagesCollectionView.delegate = self
        imagesCollectionView.layer.cornerRadius = 10
        let nib = UINib(nibName: String(describing: ProductImageCell.self), bundle: nil)
        imagesCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: ProductImageCell.self))
        imagesCollectionView.reloadData()
    }
    
    func setupProductPage(product: Product) {
        productNameLabel.text = product.itemName
        
        if let productPhotos = product.photos {
            productImageView.sd_setImage(with: URL(string: productPhotos[0]))
            productImages = productPhotos
        }
        
        if let price = product.costByn, !price.isEmpty {
            productPriceLabel.text = price + " РУБ."
        }
        
        if let productDescription = product.description {
            if let productComposition = productDescription.composition, productComposition.count != 0, let productCompositionItem = productComposition.first, !productCompositionItem.isEmpty {
                productCompositionLabel.text = productComposition.joined(separator: ", ")
            } else {
                productCompositionLabel.text = "не указан"
            }
            productPackageLabel.text = productDescription.package ?? "не указана"
            productSizeLabel.text = productDescription.size ?? "не указан"
            productAboutItemLabel.text = productDescription.aboutItem ?? "описание не указано"
        }
    }
    
    @objc func addToFavorites() {
        
    }
    
    @objc func removeFromFavorites() {
        
    }
}

extension ProductVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        productImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ProductImageCell.self), for: indexPath)
        guard let productImageCell = cell as? ProductImageCell else { return cell }
        productImageCell.productImageView.sd_setImage(with: URL(string: productImages[indexPath.row]))
        
        if productImageCell.productImageView.image == self.productImageView.image {
            productImageCell.productImageView.layer.borderColor = UIColor(named: "MainColor")?.cgColor
            productImageCell.productImageView.layer.borderWidth = 2
        }
        if productImageCell.productImageView.image != self.productImageView.image {
            productImageCell.productImageView.layer.borderWidth = 0
        }
        
        return productImageCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        productImageView.sd_setImage(with: URL(string: productImages[indexPath.row]))
        collectionView.reloadData()
    }
}
