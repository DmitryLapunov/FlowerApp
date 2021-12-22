//
//  FavouriteVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class FavouriteVC: UIViewController, AlertShowerProduct {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var checkView: UIView!
    @IBOutlet weak var checkImage: UIImageView!
    
    var arrayProductsObject: [ProductObject] = [] {
        didSet {
            checkArrayEmpty()
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        arrayProductsObject.removeAll()
        arrayProductsObject = RealmManager.shared.getBookmarks()
    }
    
    private func checkArrayEmpty() {
        if arrayProductsObject.isEmpty {
            tableView.isHidden = true
            checkView.isHidden = false
        } else {
            tableView.isHidden = false
            checkView.isHidden = true
        }
    }
    
    private func setupController() {
        title = "Избранное"
        tableView.backgroundColor = UIColor(named: "TertiaryColor")
        view.backgroundColor = UIColor(named: "TertiaryColor")
        checkView.backgroundColor = UIColor(named: "TertiaryColor")
        checkLabel.textColor = UIColor(named: "MainLabelColor")
        
        checkImage.layer.cornerRadius = checkImage.bounds.height / 2
        checkImage.alpha = 0.8
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: String(describing: FavouriteCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: FavouriteCell.self))
    }
    
}




extension FavouriteVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProductsObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FavouriteCell.self),for: indexPath)
        guard let favouriteCell = cell as? FavouriteCell else { return cell }
        
        var arrayProducts: [Product] = []
        
        for i in 0...arrayProductsObject.count - 1 {
           let name = arrayProductsObject[i].productName
            if let product = arrayGlobalProducts.first(where: { $0.itemName == name}) {
                arrayProducts.append(product)
            }
        }
        
        if let price = arrayProducts[indexPath.row].costByn {
            favouriteCell.priceLabel.text = price + " РУБ."
        }
       
        favouriteCell.productNameLabel.text = arrayProducts[indexPath.row].itemName
        
        if let productDescription = arrayProducts[indexPath.row].description {
            favouriteCell.productDescriptionLabel.text = productDescription.aboutItem ?? "описание не указано"
        }
        
        if let productImages = arrayProducts[indexPath.row].photos {
            favouriteCell.productImage.sd_setImage(with: URL(string: "\(productImages[0])"))
        }
        
        favouriteCell.productNameLabel.text = arrayProductsObject[indexPath.row].productName
        favouriteCell.delegate = self
        favouriteCell.alertDelegate = self
        
        return favouriteCell
    }
}

extension FavouriteVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let productVC = ProductVC(nibName: String(describing: ProductVC.self), bundle: nil)
        
        let filterProduct = arrayGlobalProducts.first{ $0.itemName == arrayProductsObject[indexPath.row].productName}
        
        productVC.alertDelegate = self
        productVC.product = filterProduct
        navigationController?.pushViewController(productVC, animated: true)
        
    }
}

extension FavouriteVC: ReloadCellFavourite {
    func reloadCell() {
        arrayProductsObject = RealmManager.shared.getBookmarks()
    }
}

extension FavouriteVC: AlertShowerFavourite {
    func showAlert(alert: UIAlertController) {
        present(alert, animated: true, completion: nil)
    }
}
