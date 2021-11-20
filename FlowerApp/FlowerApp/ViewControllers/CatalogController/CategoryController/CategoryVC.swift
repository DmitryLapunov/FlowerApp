//
//  CategoryVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import UIKit
import SDWebImage

class CategoryVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "")
        navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(filterProducts), imageName: "slider.horizontal.3")
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: String(describing: ProductCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: ProductCell.self))
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(named: "TertiaryColor")
    }
    
    @objc func filterProducts() {
        
    }
}

extension CategoryVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProductCell.self), for: indexPath)
        guard let productCell = cell as? ProductCell else { return cell }
        
        productCell.selectionStyle = .none
        productCell.productNameLabel.text = products[indexPath.row].itemName
        
        if let aboutItem = products[indexPath.row].description?.aboutItem, !aboutItem.isEmpty {
            productCell.productDescriptionLabel.text = aboutItem
        } else if let itemPackage = products[indexPath.row].description?.package, !itemPackage.isEmpty {
            productCell.productDescriptionLabel.text = itemPackage
        } else {
            productCell.productDescriptionLabel.text = "Товар без описания"
        }
        
        if let productPrice = products[indexPath.row].costByn {
            productCell.productPriceLabel.text = productPrice + " РУБ."
        }
        
        if let productImages = products[indexPath.row].photos {
            productCell.productImageView.sd_setImage(with: URL(string: "\(productImages[0])"))
            productCell.productImageForFavourite = productImages[0]
        }
        
        return productCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductVC(nibName: String(describing: ProductVC.self), bundle: nil)
        productVC.product = products[indexPath.row]
        navigationController?.pushViewController(productVC, animated: true)
    }
}
