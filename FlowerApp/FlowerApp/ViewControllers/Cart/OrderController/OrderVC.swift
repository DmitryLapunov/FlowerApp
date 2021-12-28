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

    @IBOutlet weak var backgroundStackView: UIView!
    @IBOutlet weak var nameField: ValidationTextField!
    @IBOutlet weak var phoneField: ValidationTextField!
    @IBOutlet weak var adressField: ValidationTextField!
    @IBOutlet weak var emailField: ValidationTextField!
    @IBOutlet weak var orderTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var backToOrderButton: UIButton!
    @IBOutlet weak var createOrderButton: UIButton!
    @IBOutlet weak var switcherDelivery: UISegmentedControl!
    
    var navBarHeight: CGFloat?
    weak var animationDelegate: OrderVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Детали заказа"
        setupValidationField()
        setupStackView()
        let keyboardTap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(keyboardTap)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height - backgroundStackView.frame.height / 2.2
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
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
        
        guard let navBarHeightValue = navBarHeight else { return }
        orderTopConstraint.constant = (UIScreen.main.bounds.width / 6) + navBarHeightValue
    }
    
    func setupStackView() {
        backgroundStackView.layer.cornerRadius = 12
        
        nameField.inputField.delegate = self
        phoneField.inputField.delegate = self
        adressField.inputField.delegate = self
        emailField.inputField.delegate = self
        
        nameField.inputField.tintColor = .black
        phoneField.inputField.tintColor = .black
        adressField.inputField.tintColor = .black
        emailField.inputField.tintColor = .black
        
        nameField.inputField.placeholder = "Пример: Иван"
        phoneField.inputField.placeholder = "Пример: +375291234567"
        adressField.inputField.placeholder = "Пример: Гикало 7а"
        emailField.inputField.placeholder = "Пример: vgosti.by@gmail.com"
        
        backgroundStackView.layer.shadowColor = UIColor.black.cgColor
        backgroundStackView.layer.shadowOpacity = 0.15
        backgroundStackView.layer.shadowRadius = 2
        backgroundStackView.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    
    
    @IBAction func switcherDelivery(_ sender: Any) {
        if switcherDelivery.selectedSegmentIndex == 1 {
            adressField.isHidden = true
        } else {
            adressField.isHidden = false
        }
    }
    
    @IBAction func backToOrderAction(_ sender: Any) {
        animationDelegate?.backToStepOne()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createOrderAction(_ sender: Any) {
        
        if adressField.isHidden {
            guard let name = nameField.inputField.text, !name.isEmpty, nameField.errorLabel.text == "",
                  let phone = phoneField.inputField.text, !phone.isEmpty, phoneField.errorLabel.text == "",
                  let email = emailField.inputField.text, !email.isEmpty, emailField.errorLabel.text == "" else { return }
            
            animationDelegate?.fromStepTwoToStepThree()
            let confirmationVC = ConfirmationVC(nibName: String(describing: ConfirmationVC.self), bundle: nil)
            confirmationVC.modalPresentationStyle = .overCurrentContext
            confirmationVC.modalTransitionStyle = .coverVertical
            confirmationVC.navBarHeight = self.navBarHeight
            confirmationVC.animationDelegate = self
            present(confirmationVC, animated: true, completion: nil)
        } else {
            guard let name = nameField.inputField.text, !name.isEmpty, nameField.errorLabel.text == "",
                  let phone = phoneField.inputField.text, !phone.isEmpty, phoneField.errorLabel.text == "",
                  let adress = adressField.inputField.text, !adress.isEmpty, adressField.errorLabel.text == "",
                  let email = emailField.inputField.text, !email.isEmpty, emailField.errorLabel.text == "" else { return }
            
            animationDelegate?.fromStepTwoToStepThree()
            let confirmationVC = ConfirmationVC(nibName: String(describing: ConfirmationVC.self), bundle: nil)
            confirmationVC.modalPresentationStyle = .overCurrentContext
            confirmationVC.modalTransitionStyle = .coverVertical
            confirmationVC.navBarHeight = self.navBarHeight
            confirmationVC.animationDelegate = self
            present(confirmationVC, animated: true, completion: nil)
        }
        
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

extension OrderVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
