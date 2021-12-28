//
//  OrderVC.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 7.12.21.
//

import UIKit

class OrderVC: UIViewController {

    @IBOutlet weak var nameField: ValidationTextField!
    @IBOutlet weak var phoneField: ValidationTextField!
    @IBOutlet weak var adressField: ValidationTextField!
    @IBOutlet weak var emailField: ValidationTextField!
    @IBOutlet weak var orderTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var createOrderButton: UIButton!
    
    var navBarHeight: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Детали заказа"
        setupValidationField()
    }
    
    private func setupValidationField() {
        nameField.validationType = .name
        phoneField.validationType = .phone
        adressField.validationType = .adress
        emailField.validationType = .email
        
        createOrderButton.addShadowAndTintColor()
        
        nameField.delegate = self
        phoneField.delegate = self
        adressField.delegate = self
        emailField.delegate = self
        
        guard let navBarHeightValue = navBarHeight else { return }
        orderTopConstraint.constant = (UIScreen.main.bounds.width / 6) + navBarHeightValue
    }
    
    @IBAction func createOrderAction(_ sender: Any) {
        let user = User(name: "testName", phone: "testPhone", address: "testAddress", delivery: .delivery)
        let order = Order(user: user).params()
        print(order)
        MailBuilder().sendOrderToOperator(order: Order(user: user))
    }
    
}

extension OrderVC: ValidationTextFieldDelegate {
    func layoutSubviews() {
        self.view.layoutSubviews()
    }
}
