//
//  ShoppingCartVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class ShoppingCartVC: UIViewController {
    @IBOutlet weak var greenBgWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var greenBgView: UIView!
    @IBOutlet weak var orderDetailsButton: UIButton!
    @IBOutlet weak var orderStepLabel: UILabel!
    @IBOutlet weak var orderStepLabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var orderStepLabelWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    
    var cartProducts: [CartProduct] = []
    var selectedProducts: [IndexPath] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Корзина"
        
        setupTableView()
        
        orderDetailsButton.addShadowAndTintColor()
        orderStepLabelWidthConstraint.constant = UIScreen.main.bounds.width / 3
        greenBgWidthConstraint.constant = UIScreen.main.bounds.width / 3
        
        self.definesPresentationContext = true
    }
    
    private func setupTableView() {
        cartProducts = RealmManager.shared.getCart()
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: String(describing: CartCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: CartCell.self))
        tableView.separatorStyle = .none
    }
    
    @objc func checkboxClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        let point = sender.convert(CGPoint.zero, to: tableView)
        guard let indexPath = tableView.indexPathForRow(at: point) else { return }
        if selectedProducts.contains(indexPath) {
            selectedProducts.remove(at: selectedProducts.firstIndex(of: indexPath) ?? 0)
        } else {
            selectedProducts.append(indexPath)
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    @IBAction func orderDetailsButtonAction(_ sender: Any) {
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
        orderVC.navBarHeight = self.navBarHeight
        orderVC.animationDelegate = self
        present(orderVC, animated: true, completion: nil)
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
    
}

extension ShoppingCartVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CartCell.self), for: indexPath)
        guard let cartCell = cell as? CartCell else { return cell }
        cartCell.setupCell(cartProducts[indexPath.row])
        
        if let checkboxButton = cartCell.checkboxButton {
            checkboxButton.addTarget(self, action: #selector(checkboxClicked(_:)), for: .touchUpInside)
            checkboxButton.isSelected = selectedProducts.contains(indexPath) ? false : true
            if checkboxButton.isSelected {
                cartCell.cartProductImageView.backgroundColor = .mainColor
            } else {
                cartCell.cartProductImageView.backgroundColor = .mainLabelColor
            }
        }
        
        cartCell.selectionStyle = .none
        return cartCell
    }
}
