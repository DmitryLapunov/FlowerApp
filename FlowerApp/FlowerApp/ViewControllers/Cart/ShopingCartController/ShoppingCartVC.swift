//
//  ShoppingCartVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class ShoppingCartVC: UIViewController {
    @IBOutlet weak var greenBgWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var animationSectionGrayBg: UIView!
    @IBOutlet weak var greenBgView: UIView!
    @IBOutlet weak var animationSectionCartStepsImageView: UIImageView!
    @IBOutlet weak var orderDetailsButton: UIButton!
    @IBOutlet weak var orderStepLabel: UILabel!
    @IBOutlet weak var orderStepLabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var orderStepLabelWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var checkView: UIView!
    
    var cartProducts: [CartProduct] = [] {
        didSet {
            productsInCart.removeAll()
            loadProducts()
            checkIfCartIsEmpty()
            
            if cartProducts.count == productsInCart.count {
                tableView.reloadData()
            }
        }
    }
    var productsInCart: [Product] = []
    var unselectedProductsIndexPaths: [IndexPath] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Корзина"
        
        loadProducts()
        setupTableView()
        
        orderDetailsButton.addShadowAndTintColor()
        orderStepLabelWidthConstraint.constant = UIScreen.main.bounds.width / 3
        greenBgWidthConstraint.constant = UIScreen.main.bounds.width / 3
        
        self.definesPresentationContext = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        cartProducts = RealmManager.shared.getCart()
        addDismissObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("dismissPresented"), object: nil)
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: String(describing: CartCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: CartCell.self))
        tableView.separatorStyle = .none
    }
    
    private func loadProducts() {
        for product in cartProducts {
            for item in arrayGlobalProducts {
                if item.item_name == product.productName {
                    productsInCart.append(item)
                }
            }
        }
    }
    
    private func checkIfCartIsEmpty() {
        animationSectionGrayBg.isHidden = cartProducts.count == 0
        greenBgView.isHidden = cartProducts.count == 0
        animationSectionCartStepsImageView.isHidden = cartProducts.count == 0
        orderStepLabel.isHidden = cartProducts.count == 0
        orderDetailsButton.isHidden = cartProducts.count == 0
        
        checkView.isHidden = cartProducts.count != 0
    }
    
    private func setBadge() {
        let badge = RealmManager.shared.getCart().count
        tabBarController?.tabBar.items?.last?.badgeValue = badge == 0 ? nil : "\(badge)"
        tabBarController?.tabBar.items?.last?.badgeColor = .green
    }
    
    private func addDismissObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(dismissPresented), name: NSNotification.Name("dismissPresented"), object: nil)
    }
    
    @objc private func dismissPresented() {
        self.dismiss(animated: true, completion: nil)
        cartProducts = RealmManager.shared.getCart()
        setBadge()
    }
    
    @objc func checkboxClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        let point = sender.convert(CGPoint.zero, to: tableView)
        guard let indexPath = tableView.indexPathForRow(at: point) else { return }
        if unselectedProductsIndexPaths.contains(indexPath) {
            unselectedProductsIndexPaths.remove(at: unselectedProductsIndexPaths.firstIndex(of: indexPath) ?? 0)
        } else {
            unselectedProductsIndexPaths.append(indexPath)
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    @IBAction func orderDetailsButtonAction(_ sender: Any) {
        if cartProducts.count == unselectedProductsIndexPaths.count {
            PopupController.showPopup(message: "Товары не выбраны")
        } else {
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut) { [weak self] in
                guard let self = self else { return }
                self.greenBgWidthConstraint.constant = UIScreen.main.bounds.width / 1.5
                self.orderStepLabel.text = "Оформление"
                self.orderStepLabelLeadingConstraint.constant += UIScreen.main.bounds.width / 3
                self.view.layoutSubviews()
            }
            let orderVC = OrderVC(nibName: String(describing: OrderVC.self), bundle: nil)
            orderVC.modalPresentationStyle = .overCurrentContext
            orderVC.modalTransitionStyle = .flipHorizontal
            
            var unselectedCartProducts: [CartProduct] = []
            if unselectedProductsIndexPaths.count != 0 {
                for productIndexPath in unselectedProductsIndexPaths {
                    unselectedCartProducts.append(cartProducts[productIndexPath.row])
                }
            }
            orderVC.unselectedCartProducts = unselectedCartProducts
            
            guard let tabbarHeight = tabBarController?.tabBar.frame.size.height else { return }
            orderVC.tabbarHeight = tabbarHeight
            
            orderVC.navBarHeight = self.navBarHeight
            orderVC.animationDelegate = self
            
            UserDefaultsManager.orderIsActive = true
            present(orderVC, animated: true, completion: nil)
        }
    }
}

extension ShoppingCartVC {
    var navBarHeight: CGFloat {
        return (view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0) +
        (self.navigationController?.navigationBar.frame.height ?? 0.0)
    }
}

extension ShoppingCartVC: OrderVCDelegate {
    func fromStepTwoToStepThree() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut) { [weak self] in
            guard let self = self else { return }
            self.greenBgWidthConstraint.constant = UIScreen.main.bounds.width
            self.orderStepLabel.text = "Подтверждение"
            self.orderStepLabelLeadingConstraint.constant += UIScreen.main.bounds.width / 3
            self.view.layoutSubviews()
        }
    }
    
    func fromStepThreeToStepTwo() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut) { [weak self] in
            guard let self = self else { return }
            self.greenBgWidthConstraint.constant = UIScreen.main.bounds.width / 1.5
            self.orderStepLabel.text = "Оформление"
            self.orderStepLabelLeadingConstraint.constant -= UIScreen.main.bounds.width / 3
            self.view.layoutSubviews()
        }
    }
    
    func backToStepOne() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut) { [weak self] in
            guard let self = self else { return }
            self.greenBgWidthConstraint.constant = UIScreen.main.bounds.width / 3
            self.orderStepLabel.text = "Заказ"
            self.orderStepLabelLeadingConstraint.constant = 0
            self.view.layoutSubviews()
        }
    }
}

extension ShoppingCartVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductVC(nibName: String(describing: ProductVC.self), bundle: nil)
        
        let productRealm = RealmManager.shared.getCart()
        let filter = productRealm.first{ $0.productName == productsInCart[indexPath.row].item_name}
        productVC.imageName = filter == nil ? "bookmark" : "bookmark.fill"
        
        productVC.alertDelegate = self
        productVC.product = productsInCart[indexPath.row]
        navigationController?.pushViewController(productVC, animated: true)
    }
}

extension ShoppingCartVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CartCell.self), for: indexPath)
        guard let cartCell = cell as? CartCell else { return cell }
        
        cartCell.cartProduct = cartProducts[indexPath.row]
        cartCell.product = productsInCart[indexPath.row]
        cartCell.setupCell(cartProducts[indexPath.row], productsInCart[indexPath.row])
        
        if let checkboxButton = cartCell.checkboxButton {
            checkboxButton.addTarget(self, action: #selector(checkboxClicked(_:)), for: .touchUpInside)
            checkboxButton.isSelected = unselectedProductsIndexPaths.contains(indexPath) ? false : true
            if checkboxButton.isSelected {
                checkboxButton.tintColor = .mainColor
            } else {
                checkboxButton.tintColor = .mainLabelColor
            }
        }
        
        cartCell.selectionStyle = .none
        return cartCell
    }
}

extension ShoppingCartVC: AlertShowerProduct {
    func showAlert(alert: UIAlertController) {
        present(alert, animated: true, completion: nil)
    }
}
