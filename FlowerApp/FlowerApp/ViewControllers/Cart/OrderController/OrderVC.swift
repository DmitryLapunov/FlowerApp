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
        
        nameField.delegate = self
        phoneField.delegate = self
        adressField.delegate = self
        emailField.delegate = self
    }
}

extension OrderVC: ValidationTextFieldDelegate {
    func layoutSubviews() {
        self.view.layoutSubviews()
    }
}
