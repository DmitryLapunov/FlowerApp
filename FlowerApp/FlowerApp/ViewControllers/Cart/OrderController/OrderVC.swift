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
    @IBOutlet weak var buttonViewConstraintBottom: NSLayoutConstraint!
    @IBOutlet weak var buttonViewConstraintTop: NSLayoutConstraint!
    @IBOutlet weak var deliveryChooseView: UIView!
    @IBOutlet weak var expressDeliveryButton: UIButton!
    @IBOutlet weak var defaultDeliveryButton: UIButton!
    
    
    var viewPosition: CGFloat?
    var navBarHeight: CGFloat?
    weak var animationDelegate: OrderVCDelegate?
    var tabbarHeight: CGFloat = 0
    var unselectedCartProducts: [CartProduct] = []
    
    override func loadView() {
        super.loadView()
        buttonViewConstraintTop.isActive = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Детали заказа"
        setupButtonChoose()
        setupStackView()
        setupValidationField()
        let keyboardTap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(keyboardTap)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewPosition = backgroundStackView.frame.origin.y
        calсulateConstraint()
    }
    
    private func setupButtonChoose() {
        defaultDeliveryButton.setImage(UIImage(systemName: "square.fill"), for: .normal)
        defaultDeliveryButton.tintColor = .mainColor
        expressDeliveryButton.setImage(UIImage(systemName: "square"), for: .normal)
        expressDeliveryButton.tintColor = .mainColor
    }
    
    private func calсulateConstraint() {
        let constraint = UIScreen.main.bounds.height - backgroundStackView.frame.minY - tabbarHeight - 44.5
        buttonViewConstraintTop.isActive = true
        buttonViewConstraintTop.constant = constraint
        buttonViewConstraintBottom.isActive = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                let heightMove = self.view.frame.maxY - keyboardSize.height - backgroundStackView.frame.maxY
                if heightMove < 0 {
                    self.view.frame.origin.y += heightMove
                }
               
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
        
        orderTopConstraint.constant = (UIScreen.main.bounds.width / 6) + 17
    }
    
    private func setupStackView() {
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
        
        backgroundStackView.addShadowAndCornerRadius()
    }
    @IBAction func deliveryTypeAction(_ sender: UIButton) {
        if sender.tag == 1000 {
            defaultDeliveryButton.setImage(UIImage(systemName: "square.fill"), for: .normal)
            expressDeliveryButton.setImage(UIImage(systemName: "square"), for: .normal)
            defaultDeliveryButton.tintColor = .mainColor
            expressDeliveryButton.tintColor = .mainColor
        } else {
            expressDeliveryButton.setImage(UIImage(systemName: "square.fill"), for: .normal)
            defaultDeliveryButton.setImage(UIImage(systemName: "square"), for: .normal)
            defaultDeliveryButton.tintColor = .mainColor
            expressDeliveryButton.tintColor = .mainColor
        }
    }
    
    @IBAction func switcherDelivery(_ sender: Any) {
        if switcherDelivery.selectedSegmentIndex == 1 {
            adressField.isHidden = true
            deliveryChooseView.isHidden = true
        } else {
            deliveryChooseView.isHidden = false
            adressField.isHidden = false
        }
    }
    
    @IBAction func backToOrderAction(_ sender: Any) {
        animationDelegate?.backToStepOne()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createOrderAction(_ sender: Any) {
        let confirmationVC = ConfirmationVC(nibName: String(describing: ConfirmationVC.self), bundle: nil)
        confirmationVC.modalPresentationStyle = .overCurrentContext
        confirmationVC.modalTransitionStyle = .flipHorizontal
        confirmationVC.navBarHeight = self.navBarHeight
        confirmationVC.unselectedCartProducts = self.unselectedCartProducts
        
        if adressField.isHidden {
            guard let name = nameField.inputField.text, !name.isEmpty, nameField.errorLabel.text == "",
                  let phone = phoneField.inputField.text, !phone.isEmpty, phoneField.errorLabel.text == "",
                  let email = emailField.inputField.text, !email.isEmpty, emailField.errorLabel.text == "" else {
                      PopupController.showPopup(message: "Поля не заполнены")
                      return
                  }
            
            animationDelegate?.fromStepTwoToStepThree()
            confirmationVC.animationDelegate = self
            confirmationVC.delivery = false
            confirmationVC.name = name
            confirmationVC.phone = phone
            confirmationVC.email = email
            present(confirmationVC, animated: true, completion: nil)
        } else {
            guard let name = nameField.inputField.text, !name.isEmpty, nameField.errorLabel.text == "",
                  let phone = phoneField.inputField.text, !phone.isEmpty, phoneField.errorLabel.text == "",
                  let adress = adressField.inputField.text, !adress.isEmpty, adressField.errorLabel.text == "",
                  let email = emailField.inputField.text, !email.isEmpty, emailField.errorLabel.text == "" else {
                      PopupController.showPopup(message: "Поля не заполнены")
                      return
                  }
            
            animationDelegate?.fromStepTwoToStepThree()
            if defaultDeliveryButton.imageView?.image == UIImage(systemName: "square.fill") {
                confirmationVC.defaultDelivery = true
            } else {
                confirmationVC.defaultDelivery = false
            }
            confirmationVC.animationDelegate = self
            confirmationVC.delivery = true
            confirmationVC.name = name
            confirmationVC.phone = phone
            confirmationVC.email = email
            confirmationVC.address = adress
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
    func backToEmptyCart() {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        animationDelegate?.fromStepThreeToStepTwo()
        animationDelegate?.backToStepOne()
    }
    
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
