//
//  ConfirmationVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 28.12.21.
//

import UIKit
import SDWebImage

protocol ConfirmationVCDelegate: AnyObject {
    func backToStepTwo()
}

class ConfirmationVC: UIViewController {
    @IBOutlet weak var confirmationTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var backToPreviousButton: UIButton!
    @IBOutlet weak var sendOrderButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var deliveryAdressLabel: UILabel!
    @IBOutlet weak var addressLabel: UIView!
    @IBOutlet weak var labelView: UIView!
    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewBackgroundView: UIView!
    @IBOutlet weak var totalCost: UILabel!
    
    
    var cartProducts: [CartProduct] = []
    var unselectedCartProducts: [CartProduct] = []
    var productsInCart: [Product] = []
    var navBarHeight: CGFloat?
    weak var animationDelegate: ConfirmationVCDelegate?
    var totalCostByn = 0.0
    var delivery = true
    var name = ""
    var phone = ""
    var email = ""
    var adress = "Самовывоз"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadProducts()
        setupCollectionView()
        setupLabelView()
        collectionViewBackgroundView.addShadowAndCornerRadius()
        configureProducts()
        
        backToPreviousButton.addShadowAndSecondaryTintColor()
        sendOrderButton.addShadowAndTintColor()
        
        confirmationTopConstraint.constant = (UIScreen.main.bounds.width / 6) + 14
        
        totalCost.text = "Заказ на сумму: \(totalCostByn) РУБ."
    }
    
    private func setupCollectionView() {
        let nib = UINib(nibName: String(describing: ProductCartCell.self), bundle: nil)
        productCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: ProductCartCell.self))
        productCollectionView.dataSource = self
    }
    
    private func loadProducts() {
        cartProducts = RealmManager.shared.getCart()
        for unselectedCartProduct in unselectedCartProducts {
            cartProducts = cartProducts.filter({$0.productName != unselectedCartProduct.productName})
        }
        
        for product in cartProducts {
            for item in arrayGlobalProducts {
                if item.itemName == product.productName {
                    productsInCart.append(item)
                }
            }
        }
    }
    
    private func configureProducts() {
        for item in cartProducts {
            totalCostByn += item.productCost * Double(item.count)
        }
    }
    
    private func setupLabelView() {
        
        if delivery {
            deliveryAdressLabel.isHidden = false
            addressLabel.isHidden = false
        } else {
            deliveryAdressLabel.isHidden = true
            addressLabel.isHidden = true
        }
        
        nameLabel.text = name
        phoneLabel.text = phone
        deliveryAdressLabel.text = adress
        emailLabel.text = email
        
        labelView.addShadowAndCornerRadius()
    }
    
    private func dismissViewControllers() {
        guard let presentingVC = self.presentingViewController else { return }
        while (presentingVC.presentingViewController != nil) {
            presentingVC.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func backToPreviousAction(_ sender: Any) {
        animationDelegate?.backToStepTwo()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendOrderAction(_ sender: Any) {
        for product in unselectedCartProducts {
            RealmManager.shared.deleteCartProduct(product: product)
        }
        print(RealmManager.shared.getCart())
        let user = User(name: name, phone: phone, address: adress, delivery: delivery ? .delivery : .pickup)
        let order = Order(user: user).params()
        print(order)
        MailBuilder().sendOrderToOperator(order: Order(user: user))
        for product in RealmManager.shared.getCart() {
            RealmManager.shared.deleteCartProduct(product: product)
        }
        print(RealmManager.shared.getCart())
        PopupController.showPopup(duration: 5.0, message: "Заказ успешно отправлен! В ближайшее время наш менеджер свяжется с вами для подтверждения")
    }
}

extension ConfirmationVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsInCart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ProductCartCell.self), for: indexPath)
        guard let productCartCell = cell as? ProductCartCell else { return cell}
        
        if let url = productsInCart[indexPath.row].photos?.first {
            productCartCell.productImage.sd_setImage(with: URL(string: url), completed: nil)
        }
        productCartCell.productName.text = productsInCart[indexPath.row].itemName
        if let cost = productsInCart[indexPath.row].cost {
            productCartCell.productPrice.text = "\(cost * Double(cartProducts[indexPath.row].count)) РУБ."
        }
        productCartCell.productCount.text = "\(cartProducts[indexPath.row].count) ШТ."
        
        return productCartCell
    }
}

extension ConfirmationVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2 - 32, height: 200)
    }
}
