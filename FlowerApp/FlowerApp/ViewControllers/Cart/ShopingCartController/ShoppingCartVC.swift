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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Корзина"
        
        orderDetailsButton.addShadowAndTintColor()
        orderStepLabelWidthConstraint.constant = UIScreen.main.bounds.width / 3
        greenBgWidthConstraint.constant = UIScreen.main.bounds.width / 3
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        greenBgWidthConstraint.isActive = true
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
        orderVC.modalTransitionStyle = .coverVertical
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
