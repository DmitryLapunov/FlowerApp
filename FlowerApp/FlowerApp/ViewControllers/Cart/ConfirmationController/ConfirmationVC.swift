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
    @IBOutlet weak var labelView: UIView!
    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewBackgroundView: UIView!
    @IBOutlet weak var totalCost: UILabel!
    
    var arrayCartProduct: [Product] = []
    var navBarHeight: CGFloat?
    weak var animationDelegate: ConfirmationVCDelegate?
    var totalCostByn = 0.0
    var delivery = true
    var name = ""
    var phone = ""
    var email = ""
    var adress = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabelView()
        setupCollectionViewView()
        addTotalCount()
        
        backToPreviousButton.addShadowAndSecondaryTintColor()
        sendOrderButton.addShadowAndTintColor()
        
        guard let navBarHeightValue = navBarHeight else { return }
        confirmationTopConstraint.constant = (UIScreen.main.bounds.width / 6) + navBarHeightValue
        
        let nib = UINib(nibName: String(describing: ProductCartCell.self), bundle: nil)
        productCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: ProductCartCell.self))
        productCollectionView.dataSource = self
        
        totalCost.text = "Общая стоимость заказа \(totalCostByn) BYN"
        
    }
    
    private func addTotalCount() {
        for i in 0...arrayCartProduct.count - 1 {
            if let cost = arrayCartProduct[i].costByn, Double(cost) != nil {
                self.totalCostByn += Double(cost)!
            }
        }
    }
    
    private func setupLabelView() {
        
        if delivery {
            deliveryAdressLabel.isHidden = false
        } else {
            deliveryAdressLabel.isHidden = true
        }
        
        nameLabel.text = "Имя: \(name)"
        phoneLabel.text = "Телефон: \(phone)"
        deliveryAdressLabel.text = "Адресс доставки: \(adress)"
        emailLabel.text = "Email: \(email)"
        
        labelView.layer.cornerRadius = 12
        
        labelView.layer.shadowColor = UIColor.black.cgColor
        labelView.layer.shadowOpacity = 0.15
        labelView.layer.shadowRadius = 2
        labelView.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    
    private func setupCollectionViewView() {
        collectionViewBackgroundView.layer.cornerRadius = 12
        
        collectionViewBackgroundView.layer.shadowColor = UIColor.black.cgColor
        collectionViewBackgroundView.layer.shadowOpacity = 0.15
        collectionViewBackgroundView.layer.shadowRadius = 2
        collectionViewBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
    }
    
    @IBAction func backToPreviousAction(_ sender: Any) {
        animationDelegate?.backToStepTwo()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendOrderAction(_ sender: Any) {
        let user = User(name: "testName", phone: "testPhone", address: "testAddress", delivery: .delivery)
        let order = Order(user: user).params()
        print(order)
        MailBuilder().sendOrderToOperator(order: Order(user: user))
    }
}

extension ConfirmationVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCartProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ProductCartCell.self), for: indexPath)
        guard let productCartCell = cell as? ProductCartCell else { return cell}
        
        if let url = arrayCartProduct[indexPath.row].photos?.first {
            productCartCell.productImage.sd_setImage(with: URL(string: url), completed: nil)
        }
        productCartCell.productName.text = arrayCartProduct[indexPath.row].itemName
        if let cost = arrayCartProduct[indexPath.row].costByn {
            productCartCell.productPrice.text = "\(cost) BYN"
        }
        
        return productCartCell
    }
}

extension ConfirmationVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2 - 32, height: 200)
    }
}
