//
//  ShoppingCartVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class ShoppingCartVC: UIViewController {
    @IBOutlet weak var greenBgAspectRatioConstraint: NSLayoutConstraint!
    @IBOutlet weak var greenBgView: UIView!
    @IBOutlet weak var orderDetailsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Корзина"
        
        orderDetailsButton.addShadowAndTintColor()
    }
    
    @IBAction func orderDetailsButtonAction(_ sender: Any) {
        greenBgAspectRatioConstraint.isActive = false
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut) {
            self.greenBgView.translatesAutoresizingMaskIntoConstraints = false
            self.greenBgView.addConstraint(NSLayoutConstraint(item: self.greenBgView!,
                                                         attribute: .height,
                                                         relatedBy: .equal,
                                                              toItem: self.greenBgView,
                                                         attribute: .width,
                                                         multiplier: 1/4,
                                                         constant: 0))
            self.view.layoutSubviews()
        }
        
        let orderVC = OrderVC(nibName: String(describing: OrderVC.self), bundle: nil)
        orderVC.modalPresentationStyle = .overCurrentContext
        orderVC.modalTransitionStyle = .coverVertical
        orderVC.navBarHeight = self.navBarHeight
        present(orderVC, animated: true, completion: nil)
    }
}

extension ShoppingCartVC {
    var navBarHeight: CGFloat {
        return (view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0) +
            (self.navigationController?.navigationBar.frame.height ?? 0.0)
    }
}
