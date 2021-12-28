//
//  OrderVC.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 7.12.21.
//

import UIKit

protocol OrderVCDelegate: AnyObject {
    func backToStepOne()
    func fromStepThreeToStepTwo()
    func fromStepTwoToStepThree()
}

class OrderVC: UIViewController {

    @IBOutlet weak var nameField: ValidationTextField!
    @IBOutlet weak var phoneField: ValidationTextField!
    @IBOutlet weak var adressField: ValidationTextField!
    @IBOutlet weak var emailField: ValidationTextField!
    @IBOutlet weak var orderTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var backToOrderButton: UIButton!
    @IBOutlet weak var createOrderButton: UIButton!
    
    var navBarHeight: CGFloat?
    weak var animationDelegate: OrderVCDelegate?
    
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
        
        backToOrderButton.addShadowAndSecondaryTintColor()
        createOrderButton.addShadowAndTintColor()
        
        nameField.delegate = self
        phoneField.delegate = self
        adressField.delegate = self
        emailField.delegate = self
        
        orderTopConstraint.constant = (UIScreen.main.bounds.width / 6) + 17
    }
    
    @IBAction func backToOrderAction(_ sender: Any) {
        animationDelegate?.backToStepOne()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createOrderAction(_ sender: Any) {
        animationDelegate?.fromStepTwoToStepThree()
        let confirmationVC = ConfirmationVC(nibName: String(describing: ConfirmationVC.self), bundle: nil)
        confirmationVC.modalPresentationStyle = .overCurrentContext
        confirmationVC.modalTransitionStyle = .flipHorizontal
        confirmationVC.navBarHeight = self.navBarHeight
        confirmationVC.animationDelegate = self
        present(confirmationVC, animated: true, completion: nil)
    }
    
}

extension OrderVC: ValidationTextFieldDelegate {
    func layoutSubviews() {
        self.view.layoutSubviews()
    }
}

extension OrderVC: ConfirmationVCDelegate {
    func backToStepTwo() {
        animationDelegate?.fromStepThreeToStepTwo()
    }
}
