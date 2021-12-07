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
    
    var productRealm: [ProductObject] = [] {
        didSet{
            navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(addToFavorites), imageName: imageName)
        }
    }
    var product: Product?
    var productImages: [String] = []
    var productAmount: Int? {
        didSet {
            productAmountField.text = "\(productAmount ?? 1)"
        }
    }
    var imageName = ""
    var alertDelegate: AlertShowerProduct?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(addToFavorites), imageName: "bookmark")
        scrollViewHeightConstraint.constant = productCompositionLabel.frame.height + productPackageLabel.frame.height + productSizeLabel.frame.height + productAboutItemLabel.frame.height + 40
        
        
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
           let secondFont = UIFont(name: "Octava", size: 20.0),
           let nameText = productNameLabel.text,
           let compositionText = productCompositionLabel.text,
           let packageText = productPackageLabel.text,
           let sizeText = productSizeLabel.text,
           let aboutItemText = productAboutItemLabel.text {
            scrollViewHeightConstraint.constant = nameText.height(withConstrainedWidth: productNameLabel.frame.width, font: secondFont) + (productImagesBackgroundView.frame.width / 1.5) + compositionText.height(withConstrainedWidth: productCompositionLabel.frame.width, font: font) + packageText.height(withConstrainedWidth: productPackageLabel.frame.width, font: font) + sizeText.height(withConstrainedWidth: productSizeLabel.frame.width, font: font) + aboutItemText.height(withConstrainedWidth: productAboutItemLabel.frame.width, font: font) + 190
        }
        
        guard let product = product, let productName = product.itemName, let productInCart = RealmManager.shared.checkInCart(productName: productName) else {
            return
        }
        
        productAmount = productInCart.count
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        productRealm = RealmManager.shared.getBookmarks()
        let filter = productRealm.first { $0.productName == productNameLabel.text}
        if filter == nil {
            navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(addToFavorites), imageName: "bookmark")
            imageName = "bookmark"
        } else {
            navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(addToFavorites), imageName: "bookmark.fill")
            imageName = "bookmark.fill"
        }
    }
    
    
    @IBAction func addToCartAction(_ sender: Any) {
        guard let product = product, let productName = product.itemName, let amountText = productAmountField.text, let amount = Int(amountText), amount != 0 else {
            return
        }
        let productToCart = CartProduct(productName: productName, count: amount)
        RealmManager.shared.writeCart(product: productToCart)
        setBadge()
        PopupController.showPopup(message: "Товар добавлен в корзину")
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
    
    private func setBadge() {
        let badge = RealmManager.shared.getCart().count
        tabBarController?.tabBar.items?.last?.badgeValue = badge == 0 ? nil : "\(badge)"
    }
    
    @objc func addToFavorites() {
        if imageName == "bookmark" {
            guard let name = productNameLabel.text else { return }
            RealmManager.shared.writeBookmarks(product: ProductObject(productName: name))
            imageName = "bookmark.fill"
            navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(addToFavorites), imageName: "bookmark.fill")
            PopupController.showPopup()
        } else {
            guard let name = productNameLabel.text else { return }
            let alert = UIAlertController(title: "Подтвердите действие", message: "Вы действительно хотите удалить «\(name)» из избранного?", preferredStyle: .alert)
            let noAction = UIAlertAction(title: "Нет", style: .default, handler: nil)
            let yesAction = UIAlertAction(title: "Да", style: .destructive, handler: { action in
                RealmManager.shared.deleteBookmarks(productName: name)
                self.imageName = "bookmark"
                self.navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(self.addToFavorites), imageName: "bookmark")
            })
            alert.addAction(yesAction)
            alert.addAction(noAction)
            self.alertDelegate?.showAlert(alert: alert) 
        }
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
