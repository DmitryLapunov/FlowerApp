//
//  ValidationTextField.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 7.12.21.
//

import UIKit
import Moya

protocol ValidationTextFieldDelegate: AnyObject {
    func layoutSubviews()
}

enum ValidationType: String {
    case phone = "^(\\+375|375)(29|25|44|33)(\\d{3})(\\d{2})(\\d{2})$"
    case name = "[\\S]{3,30}"
    case email = "^[A-z0-9_.+-]+@[A-z0-9-]+(\\.[A-z0-9-]{2,})+$"
    case adress = "[\\S]{5,30}"
    case none = "[\\S]"
}
 
@IBDesignable class ValidationTextField: UIView {
    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var inputField: InsetsTextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet var contentView: UIView!
    
    @IBInspectable var placeholder: String? {
        set { placeholderLabel.text = newValue }
        get { return placeholderLabel.text }
    }
    
    @IBInspectable var errorMessage: String? {
        set { errorMessageText = newValue ?? "" }
        get { return errorMessageText }
    }
    
    @IBInspectable var errorColor: UIColor {
        set { errorBorderColor = newValue }
        get { return errorBorderColor }
    }
    
    @IBInspectable var borderColor: UIColor {
        set {
            regularBorderColor = newValue
            self.inputField.layer.borderColor = newValue.cgColor
        }
        get { return regularBorderColor }
    }
    
    weak var delegate: ValidationTextFieldDelegate?
    
    private var errorBorderColor = UIColor.red
    private var regularBorderColor = UIColor.lightGray
    var validationType: ValidationType?
    private var errorMessageText: String = ""
    private var timer: Timer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func setup(errorMessage: String, placeholderText: String, validationType: ValidationType) {
        self.errorLabel.text = errorMessage
        self.placeholderLabel.text = placeholderText
        self.validationType = validationType
    }
    
    private func commonInit() {
        let bundle = Bundle(for: ValidationTextField.self)
        bundle.loadNibNamed(String(describing: ValidationTextField.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        inputField.addTarget(self, action: #selector(validateText), for: .editingChanged)
        inputField.layer.borderWidth = 0.35
        inputField.layer.cornerRadius = 5
        errorLabel.text = ""
    }
}

// MARK: ValidationTextField
extension ValidationTextField {
    @objc private func validateText() {
        timer?.invalidate()
        
        if let text = self.inputField.text, text.isEmpty {
            self.validationSuccess()
            return
        }
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { [weak self] _ in
            guard let self = self else { return }
            //Break if user not set validation type to none
            guard let validation = self.validationType else { return }
            
            guard let text = self.inputField.text, !text.isEmpty else {
                self.validationFail()
                return
            }
            
            let passPred = NSPredicate(format:"SELF MATCHES %@", validation.rawValue)
            passPred.evaluate(with: text) ? self.validationSuccess() : self.validationFail()
        })
        
    }
    
    private func validationSuccess() {
        inputField.layer.borderColor = regularBorderColor.cgColor
        errorLabel.text = ""
        self.delegate?.layoutSubviews()
    }
    
    private func validationFail() {
        UIView.animate(withDuration: 0.5) { [weak self] in
            guard let self = self else { return }
            self.inputField.layer.borderColor = self.errorBorderColor.cgColor
        } completion: { [weak self] _ in
            UIView.animate(withDuration: 0.5) {
                guard let self = self else { return }
                self.inputField.layer.borderColor = self.regularBorderColor.cgColor
                self.delegate?.layoutSubviews()
            }
        }
        
        errorLabel.text = errorMessageText
    }
}
