//
//  PopupController.swift
//  FlowerApp
//
//  Created by Евгений on 26.11.21.
//

import UIKit

class PopupController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var mainView: UIView!
    
    private var timer: Timer?
    private var duration: TimeInterval = 1.3
    private var message: String = ""
    private var backgroundColor: UIColor = .systemGray5
    private var textColor: UIColor = .black
    private var useShadow = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureGesture()
        setupTimer()
        configureUI()
        labelOutlet.text = message
        
    }
    
    private func configureUI() {
        labelOutlet.text = message
        labelOutlet.textColor = textColor
        mainView.backgroundColor = backgroundColor
        mainView.alpha = 0.9
        if useShadow {
            mainView.layer.shadowColor = UIColor.black.cgColor
            mainView.layer.shadowOpacity = 0.15
            mainView.layer.shadowRadius = 2
            mainView.layer.shadowOffset = CGSize(width: 0, height: 2)
        }
       
    }
    
    private func setupTimer() {
        guard duration != 0 else { return }
        timer = Timer.scheduledTimer(timeInterval: duration,
                                     target: self,
                                     selector: #selector(didTap),
                                     userInfo: nil,
                                     repeats: false)
    }
    
    @objc private func didTap() {
        self.dismiss(animated: true)
    }
    
    private func configureGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTap))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    class func showPopup(duration: TimeInterval = 1.3, message: String = "Товар добавлен в «Избранное»", textColor: UIColor = UIColor.mainLabelColor() ?? .black, backgroundColor: UIColor = UIColor.tertiaryColor() ?? .systemGray5, useShadow: Bool = true) {
        if let topController = UIApplication.topWindowController() {
            let popup = PopupController(nibName: String(describing: PopupController.self), bundle: nil)
            popup.modalPresentationStyle = .overCurrentContext
            popup.modalTransitionStyle = .crossDissolve
            popup.duration = duration
            popup.message = message
            popup.backgroundColor = backgroundColor
            popup.textColor = textColor
            popup.useShadow = useShadow
            topController.present(popup, animated: true)
        }
    }
}
