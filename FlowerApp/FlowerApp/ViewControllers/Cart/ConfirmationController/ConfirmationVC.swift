//
//  ConfirmationVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 28.12.21.
//

import UIKit

protocol ConfirmationVCDelegate: AnyObject {
    func backToStepTwo()
}

class ConfirmationVC: UIViewController {
    @IBOutlet weak var confirmationTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var backToPreviousButton: UIButton!
    @IBOutlet weak var sendOrderButton: UIButton!
    
    var navBarHeight: CGFloat?
    weak var animationDelegate: ConfirmationVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backToPreviousButton.addShadowAndSecondaryTintColor()
        sendOrderButton.addShadowAndTintColor()
        
        confirmationTopConstraint.constant = (UIScreen.main.bounds.width / 6) + 17
    }
    
    @IBAction func backToPreviousAction(_ sender: Any) {
        animationDelegate?.backToStepTwo()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendOrderAction(_ sender: Any) {
        let user = User(name: "testName", phone: "testPhone", address: "testAddress", delivery: .delivery)
        let order = Order(user: user).params()
        print(order)
        MailBuilder().sendOrderToOperator(order: Order(user: user))
    }
}
