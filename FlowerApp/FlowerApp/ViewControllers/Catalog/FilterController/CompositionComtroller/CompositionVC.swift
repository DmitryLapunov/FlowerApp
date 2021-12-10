//
//  CompositionVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 10.12.21.
//

import UIKit

class CompositionVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Состав"
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "")
    }
}
