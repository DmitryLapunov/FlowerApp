//
//  CategoryVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import UIKit
import SDWebImage
import Realm

class CategoryVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product] = []
    var productRealm: [ProductObject] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "")
        navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(filterProducts), imageName: "slider.horizontal.3")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        productRealm = RealmManager.shared.getProducts()
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
        }
        
        if let name = products[indexPath.row].itemName {
            productCell.product = ProductObject(productName: name)
        }
        
        let filter = productRealm.first { $0.productName == products[indexPath.row].itemName}
        if filter == nil {
            productCell.addToFavouriteButtonOutlet.setImage(UIImage(systemName: "bookmark"), for: .normal)
        } else {
            productCell.addToFavouriteButtonOutlet.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
        }
        
        productCell.delegate = self
        
        return productCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductVC(nibName: String(describing: ProductVC.self), bundle: nil)
        productVC.product = products[indexPath.row]
        navigationController?.pushViewController(productVC, animated: true)
    }
}

extension CategoryVC: ReloadCellCategory {
    func reloadCell() {
        productRealm = RealmManager.shared.getProducts()
    }
    
    
}
