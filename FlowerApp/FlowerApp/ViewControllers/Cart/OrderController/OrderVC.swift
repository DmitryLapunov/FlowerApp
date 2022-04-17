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
    @IBOutlet weak var orderViewConstraint: NSLayoutConstraint!
    @IBOutlet weak var backToOrderButton: UIButton!
    @IBOutlet weak var createOrderButton: UIButton!
    @IBOutlet weak var switcherDelivery: UISegmentedControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var expressDeliveryButton: UIButton!
    @IBOutlet weak var defaultDeliveryButton: UIButton!
    @IBOutlet weak var deliveryChooseView: UIView!
    
    @IBOutlet weak var datePickerField: UITextField!
    @IBOutlet weak var timePickerField: UITextField!
    @IBOutlet weak var commentToDelivaryTextView: UITextView!
    
    @IBOutlet weak var deliveryTimePickerView: UIView!
    @IBOutlet weak var commentView: UIView!
    
    
    var viewPosition: CGFloat?
    var navBarHeight: CGFloat?
    weak var animationDelegate: OrderVCDelegate?
    var tabbarHeight: CGFloat = 0
    var unselectedCartProducts: [CartProduct] = []
    private var scrollViewStartY: CGFloat = 0
    private var timeDataSource = ["10:00 - 12:00",
                                  "12:00 - 14:00",
                                  "14:00 - 16:00",
                                  "16:00 - 18:00",
                                  "18:00 - 20:00"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Детали заказа"
        setupDeliveryButtons()
        setupStackView()
        setupValidationField()
        setupDatePicker()
        setupTimePicker()
        setupCommentTextView()
        
        let keyboardTap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(keyboardTap)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewPosition = backgroundStackView.frame.origin.y
    }
    
    private func setupDeliveryButtons() {
        defaultDeliveryButton.setImage(UIImage(systemName: "square.fill"), for: .normal)
        defaultDeliveryButton.tintColor = .mainColor
        expressDeliveryButton.setImage(UIImage(systemName: "square"), for: .normal)
        expressDeliveryButton.tintColor = .mainColor
        
        defaultDeliveryButton.setTitle("Доставка - \(UserDefaultsManager.deliveryGeneral ?? 5) РУБ. При заказе от \(UserDefaultsManager.deliveryFreeLimit ?? 60) РУБ. - бесплатно", for: .normal)
        expressDeliveryButton.setTitle("Экспресс-доставка - \(UserDefaultsManager.deliveryUrgent ?? 15) РУБ.", for: .normal)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            
            var difference = view.frame.maxY - backgroundStackView.frame.maxY - keyboardSize.minY
            if scrollView.frame.height < backgroundStackView.frame.height {
                difference = view.frame.maxY - scrollView.frame.maxY - keyboardSize.height
            }
            
            if difference < 0, scrollViewStartY == 0  {
                scrollViewStartY = self.scrollView.frame.origin.y
                self.scrollView.frame.origin.y += difference
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if scrollViewStartY != 0 {
            self.scrollView.frame.origin.y = scrollViewStartY
            scrollViewStartY = 0
        }
    }
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    private func setupDatePicker() {
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 200))
        if #available(iOS 14, *) {
            datePicker.preferredDatePickerStyle = .wheels
        }
        datePickerField.inputView = datePicker
        datePicker.datePickerMode = .date
        datePicker.minimumDate = Date()
        datePickerField.layer.borderWidth = 1
        datePickerField.layer.borderColor = UIColor.mainColor.withAlphaComponent(0.2).cgColor
        datePickerField.layer.cornerRadius = 3
        datePicker.addTarget(self, action: #selector(handleDatePicker), for: .valueChanged)
    }
    
    private func setupTimePicker() {
        let timePicker = UIPickerView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 200))
        timePicker.dataSource = self
        timePicker.delegate = self
        timePickerField.inputView = timePicker
        timePickerField.layer.borderWidth = 1
        timePickerField.layer.borderColor = UIColor.mainColor.withAlphaComponent(0.2).cgColor
        timePickerField.layer.cornerRadius = 3
    }
    
    private func setupCommentTextView() {
        commentToDelivaryTextView.layer.borderWidth = 1
        commentToDelivaryTextView.layer.borderColor = UIColor.mainColor.withAlphaComponent(0.2).cgColor
        commentToDelivaryTextView.layer.cornerRadius = 3
        commentToDelivaryTextView.tintColor = .mainColor
        commentToDelivaryTextView.delegate = self
    }
    
    @objc func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        datePickerField.text = dateFormatter.string(from: sender.date)
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
        orderViewConstraint.constant = (UIScreen.main.bounds.width / 6) + 17
    }
    
    private func setupStackView() {
        backgroundStackView.layer.cornerRadius = 12
        
        nameField.inputField.delegate = self
        phoneField.inputField.delegate = self
        adressField.inputField.delegate = self
        emailField.inputField.delegate = self
        timePickerField.delegate = self
        datePickerField.delegate = self
        
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
            commentView.isHidden = true
            deliveryTimePickerView.isHidden = true
        } else {
            deliveryChooseView.isHidden = false
            adressField.isHidden = false
            commentView.isHidden = false
            deliveryTimePickerView.isHidden = false
        }
    }
    
    @IBAction func backToOrderAction(_ sender: Any) {
        animationDelegate?.backToStepOne()
        UserDefaultsManager.orderIsActive = false
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
                  let email = emailField.inputField.text, !email.isEmpty, emailField.errorLabel.text == "",
                  let date = datePickerField.text, !date.isEmpty,
                  let time = timePickerField.text, !time.isEmpty else {
                      PopupController.showPopup(message: "Поля не заполнены")
                      return
                  }
            
            animationDelegate?.fromStepTwoToStepThree()
            if defaultDeliveryButton.imageView?.image == UIImage(systemName: "square.fill") {
                confirmationVC.defaultDelivery = true
            } else {
                confirmationVC.defaultDelivery = false
            }
            
            var commentToDelivery = ""
            if commentToDelivaryTextView.text == "Укажите комментарий к заказу(необязательно)" {
                commentToDelivery = "Без комментария"
            } else {
                commentToDelivery = commentToDelivaryTextView.text
            }
            
            confirmationVC.animationDelegate = self
            confirmationVC.delivery = true
            confirmationVC.name = name
            confirmationVC.phone = phone
            confirmationVC.email = email
            confirmationVC.address = adress
            confirmationVC.time = time
            confirmationVC.date = date
            confirmationVC.commentToDelivery = commentToDelivery
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
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField.tag == 1001, textField.text == "" {
            textField.text = timeDataSource[0]
        }
        
        if textField.tag == 1000, textField.text == "" {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd MMM yyyy"
            datePickerField.text = dateFormatter.string(from: Date())
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

extension OrderVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timeDataSource.count
    }
}

extension OrderVC: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return timeDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        timePickerField.text = timeDataSource[row]
    }
}

extension OrderVC: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            textView.resignFirstResponder()
        }
        return true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        // delete placeholder at textView
        if textView.text == "Укажите комментарий к заказу(необязательно)" {
            textView.textColor = UIColor.black
            textView.text = ""
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.textColor = UIColor.systemGray3
            textView.text = "Укажите комментарий к заказу(необязательно)"
        }
    }
}
