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
    func backToEmptyCart()
}

enum PaymentMethod: String, CaseIterable {
    case cash = "Наличные"
    case card = "Карта"
}

class ConfirmationVC: UIViewController {
    @IBOutlet weak var confirmationTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var backToPreviousButton: UIButton!
    @IBOutlet weak var sendOrderButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var deliveryAdressLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var labelView: UIView!
    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewBackgroundView: UIView!
    @IBOutlet weak var totalCost: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var crossCostLabel: UILabel!
    @IBOutlet weak var cashPaymentButton: UIButton!
    @IBOutlet weak var cardPaymentButton: UIButton!
    
    
    var cartProducts: [CartProduct] = []
    var unselectedCartProducts: [CartProduct] = []
    var productsInCart: [Product] = []
    var navBarHeight: CGFloat?
    weak var animationDelegate: ConfirmationVCDelegate?
    var totalCostByn = 0.0
    var defaultDelivery = true
    var delivery = true
    var name = ""
    var phone = ""
    var email = ""
    var address = "Самовывоз"
    private var timer: Timer?
    var paymentType: PaymentMethod?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadProducts()
        setupCollectionView()
        setupLabelView()
        collectionViewBackgroundView.addShadowAndCornerRadius()
        
        backToPreviousButton.addShadowAndSecondaryTintColor()
        sendOrderButton.addShadowAndTintColor()
        
        confirmationTopConstraint.constant = (UIScreen.main.bounds.width / 6) + 14
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureProducts()
        setupTotalCostLabel()
    }
    
    private func setupTotalCostLabel() {
        let totalCostShortened = String(format: "%.2f", totalCostByn + checkDelivery().price)
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(totalCostShortened)")
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        crossCostLabel.attributedText = attributeString
        
        let totalCostDiscounted = (totalCostByn  + checkDelivery().price) * 0.9
        totalCost.text = "\(String(format: "%.2f", totalCostDiscounted)) РУБ."
        
        let discount = totalCostByn + checkDelivery().price - totalCostDiscounted
        discountLabel.text = "Скидка: \(String(format: "%.2f", discount)) РУБ."
        
        self.totalCostByn = totalCostDiscounted
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
                if item.item_name == product.productName {
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
        
        deliveryAdressLabel.isHidden = !delivery
        addressLabel.isHidden = !delivery
        
        nameLabel.text = name
        phoneLabel.text = phone
        deliveryAdressLabel.text = address
        emailLabel.text = email
        
        labelView.addShadowAndCornerRadius()
    }
    
    private func dismissViewControllers() {
        guard let presentingVC = self.presentingViewController else { return }
        while (presentingVC.presentingViewController != nil) {
            presentingVC.dismiss(animated: true, completion: nil)
        }
    }
    
    private func checkDelivery() -> DeliveryType {
        if delivery {
            if defaultDelivery {
                if totalCostByn < Double(UserDefaultsManager.deliveryFreeLimit ?? 60) {
                    return .delivery
                } else {
                    return .freeDelivery
                }
            } else {
                return .fastDelivery
            }
        } else {
            return .pickup
        }
    }
    
    @IBAction func choosePaymentMethod(_ sender: UIButton) {
        cashPaymentButton.setImage(UIImage(systemName: "square"), for: .normal)
        cardPaymentButton.setImage(UIImage(systemName: "square"), for: .normal)
        cashPaymentButton.tintColor = .mainColor
        cardPaymentButton.tintColor = .mainColor
        switch sender.tag {
        case 1000:
            paymentType = PaymentMethod.cash
            sender.setImage(UIImage(systemName: "square.fill"), for: .normal)
        case 1001:
            paymentType = PaymentMethod.card
            sender.setImage(UIImage(systemName: "square.fill"), for: .normal)
        default:
            break
        }
    }
    
    @IBAction func backToPreviousAction(_ sender: Any) {
        animationDelegate?.backToStepTwo()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendOrderAction(_ sender: Any) {
        timer?.invalidate()
        guard let paymentType = paymentType else {
            PopupController.showPopup(message: "Выберите способ оплаты")
            return
        }
        
        for product in unselectedCartProducts {
            RealmManager.shared.deleteCartProduct(product: product)
        }
        
        let user = User(name: name, phone: phone, address: address, delivery: checkDelivery(), email: email)
        let order = Order(user: user)
        order.totalCost = Double(String(format: "%.2f", totalCostByn)) ?? totalCostByn
        MailBuilder().sendOrderToOperator(order: order)
        
        var arrayProduct = ""
        let savedCart = RealmManager.shared.getCart()
        
        for nameProduct in savedCart {
            arrayProduct += "\(nameProduct.productName), \(nameProduct.count), \(Int(nameProduct.productCost))"
            arrayProduct += ";"
        }
        
        print(arrayProduct)
#if DEBUG
        NetworkManager.shared.sendToBot(itemImfo: arrayProduct, deliveryType: checkDelivery().name, deliveryPrice: "\(checkDelivery().price)", clientPhone: user.phone, clientName: user.name, deliveryAddress: user.address, userID: "463527794", paymentType: paymentType.rawValue, cost: totalCostByn)
#else
        //        НЕ МЕНЯТЬ ID В ЭТОЙ СЕКЦИИ
        NetworkManager.shared.sendToBot(itemImfo: arrayProduct, deliveryType: checkDelivery().name, deliveryPrice: "\(checkDelivery().price)", clientPhone: user.phone, clientName: user.name, deliveryAddress: user.address, userID: "495898353", paymentType: paymentType.rawValue, cost: totalCostByn)
#endif
        
        for product in RealmManager.shared.getCart() {
            RealmManager.shared.deleteCartProduct(product: product)
        }

        PopupController.showPopup(duration: 3.0, message: "Заказ успешно отправлен! В ближайшее время наш менеджер свяжется с вами для подтверждения")
        
        timer = Timer.scheduledTimer(withTimeInterval: 3.05, repeats: false, block: { [weak self] _ in
            guard let self = self else { return }
            self.animationDelegate?.backToEmptyCart()
            UserDefaultsManager.orderIsActive = false
            NotificationCenter.default.post(name: NSNotification.Name("dismissPresented"), object: nil)
        })
    }
}

extension ConfirmationVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if delivery {
            return cartProducts.count + 1
        } else {
            return cartProducts.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ProductCartCell.self), for: indexPath)
        guard let productCartCell = cell as? ProductCartCell else { return cell}
        
        if delivery {
            if indexPath.row == 0 {
                productCartCell.productImage.image = UIImage(named: "deliveryImage")
                productCartCell.productImage.tintColor = .mainColor
                productCartCell.productName.text = "Доставка"
                productCartCell.productCountView.isHidden = true
                productCartCell.productPrice.text = "\(checkDelivery().price) РУБ"
            } else {
                if let url = productsInCart[indexPath.row - 1].photos?.first {
                    productCartCell.productImage.sd_setImage(with: URL(string: url), completed: nil)
                }
                productCartCell.productName.text = productsInCart[indexPath.row - 1].item_name
                if let cost = productsInCart[indexPath.row - 1].cost {
                    productCartCell.productPrice.text = "\(cost * Double(cartProducts[indexPath.row - 1].count)) РУБ."
                }
                productCartCell.productCount.text = "\(cartProducts[indexPath.row - 1].count) ШТ."
            }
        } else {
            if let url = productsInCart[indexPath.row].photos?.first {
                productCartCell.productImage.sd_setImage(with: URL(string: url), completed: nil)
            }
            productCartCell.productName.text = productsInCart[indexPath.row].item_name
            if let cost = productsInCart[indexPath.row].cost {
                productCartCell.productPrice.text = "\(cost * Double(cartProducts[indexPath.row].count)) РУБ."
            }
            productCartCell.productCount.text = "\(cartProducts[indexPath.row].count) ШТ."
        }
        return productCartCell
    }
}

extension ConfirmationVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2 - 32, height: 200)
    }
}
