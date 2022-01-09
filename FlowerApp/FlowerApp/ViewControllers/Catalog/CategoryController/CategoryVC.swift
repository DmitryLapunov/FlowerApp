//
//  CategoryVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import UIKit
import SDWebImage
import Realm

enum CompositionExists {
    case compositionExists
    case noComposition
}

class CategoryVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var checkView: UIView!
    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var checkLabel: UILabel!
    
    var cachedProducts: [Product] = []
    var chosenProducts: [Product] = []
    var products: [Product] = []
    var availableComposition: [String] = []
    var chosenComposition: [String] = []

    var productCart: [CartProduct] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    var productRealm: [ProductObject] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    var ifCompositionExists: CompositionExists?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        checkView.isHidden = true
        checkImage.layer.cornerRadius = checkImage.frame.width / 2
        checkImage.alpha = 0.8
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "")
        navigationItem.rightBarButtonItem = UIBarButtonItem().menuButton(target: self, action: #selector(filterProducts), imageName: "slider.horizontal.3")
        
        for product in products {
            availableComposition.append(contentsOf: product.description?.composition ?? [""])
        }
        availableComposition = Array(Set(availableComposition.filter({ $0 != "" }))).sorted(by: { $0 < $1 })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        productRealm = RealmManager.shared.getBookmarks()
        productCart = RealmManager.shared.getCart()
    }
    
    private func setupTableView() {
        cachedProducts = products
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: String(describing: ProductCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: ProductCell.self))
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.tertiaryColor
    }
    
    @objc func filterProducts() {
        products = cachedProducts
        chosenProducts = []
        tableView.isHidden = false
        checkView.isHidden = true
        tableView.reloadData()
        tableView.scrollToRow(at: [0, 0], at: .top, animated: true)
        
        let filterVC = FilterVC(nibName: String(describing: FilterVC.self), bundle: nil)
        
        filterVC.modalTransitionStyle = .crossDissolve
        filterVC.modalPresentationStyle = .overFullScreen
        
        let filtered = products.filter({ $0.cost != nil }).filter({ $0.cost != 0.0 }).sorted(by: { $0.cost ?? 0.0 < $1.cost ?? 0.0 })
        filterVC.lowestPrice = filtered.first!.cost!
        filterVC.highestPrice = filtered.last!.cost!
        
        if availableComposition != [] {
            filterVC.compositionArray = availableComposition
        }
        
        filterVC.filterDelegate = self
        navigationController?.pushViewController(filterVC, animated: true)
    }
    
    private func setBadge() {
        let badge = RealmManager.shared.getCart().count
        tabBarController?.tabBar.items?.last?.badgeValue = badge == 0 ? nil : "\(badge)"
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
        
        if let productPrice = products[indexPath.row].costByn, !productPrice.isEmpty {
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
        
        let cartFilter = productCart.first { $0.productName == products[indexPath.row].itemName}
        if cartFilter == nil {
            productCell.addToCartButtonOutlet.setImage(UIImage(systemName: "cart.badge.plus"), for: .normal)
        } else {
            productCell.addToCartButtonOutlet.setImage(UIImage(systemName: "cart.fill.badge.minus"), for: .normal)
        }
        
        productCell.productCart = products[indexPath.row]
        
        productCell.badgeDelegate = self
        productCell.delegate = self
        productCell.alertDelegate = self
        
        return productCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductVC(nibName: String(describing: ProductVC.self), bundle: nil)
        
        let filter = productRealm.first{ $0.productName == products[indexPath.row].itemName}
        productVC.imageName = filter == nil ? "bookmark" : "bookmark.fill"
        
        productVC.alertDelegate = self
        productVC.product = products[indexPath.row]
        navigationController?.pushViewController(productVC, animated: true)
    }
}

extension CategoryVC: ReloadCellCategory {
    func reloadCell() {
        productRealm = RealmManager.shared.getBookmarks()
        productCart = RealmManager.shared.getCart()
    }
}

extension CategoryVC: AlertShowerProduct {
    func showAlert(alert: UIAlertController) {
        present(alert, animated: true, completion: nil)
    }
}


extension CategoryVC: FilterProductsDelegate {
    func filterProductsArray(priceRange: [CGFloat], namePriceFilter: NamePriceFilter, composition: [String]) {
        if composition.count != 0 {
            let filteredProducts = products.filter({ $0.description != nil }).filter({ $0.description!.composition != nil })
            for product in filteredProducts {
                guard let productComposition = product.description?.composition else { return }
                if composition.allSatisfy(productComposition.contains) {
                    chosenProducts.append(product)
                }
            }
            ifCompositionExists = chosenProducts.count != 0 ? .compositionExists : .noComposition
        }
        
        if ifCompositionExists == .noComposition {
            products = chosenProducts
            tableView.reloadData()
        } else {
            if priceRange.count != 0 {
                if chosenProducts.count != 0 {
                    chosenProducts = chosenProducts.filter({ $0.cost ?? 0.0 >= priceRange[0] }).filter({ $0.cost ?? 0.0 <= priceRange[1] })
                } else {
                    chosenProducts = products.filter({ $0.cost ?? 0.0 >= priceRange[0] }).filter({ $0.cost ?? 0.0 <= priceRange[1] })
                }
            }
            
            if chosenProducts.count != 0 {
                switch namePriceFilter {
                case .byNameDesc:
                    chosenProducts = chosenProducts.sorted(by: { $0.itemName! > $1.itemName! } )
                case .byNameAsc:
                    chosenProducts = chosenProducts.sorted(by: { $0.itemName! < $1.itemName! } )
                case .byPriceDesc:
                    chosenProducts = chosenProducts.sorted(by: { $0.cost! > $1.cost! } )
                case .byPriceAsc:
                    chosenProducts = chosenProducts.sorted(by: { $0.cost! < $1.cost! } )
                case .ignore:
                    break
                }
            } else {
                switch namePriceFilter {
                case .byNameDesc:
                    chosenProducts = products.sorted(by: { $0.itemName! > $1.itemName! } )
                case .byNameAsc:
                    chosenProducts = products.sorted(by: { $0.itemName ?? "" < $1.itemName ?? "" } )
                case .byPriceDesc:
                    chosenProducts = products.sorted(by: { $0.cost! > $1.cost! } )
                case .byPriceAsc:
                    chosenProducts = products.sorted(by: { $0.cost! < $1.cost! } )
                case .ignore:
                    break
                }
            }
        }
        
        products = chosenProducts
        
        if products.count == 0 {
            tableView.isHidden = true
            checkView.isHidden = false
        } else {
            tableView.isHidden = false
            checkView.isHidden = true
        }
        
        tableView.reloadData()
    }
}
    
extension CategoryVC: ReloadBadge {
    func reloadBadge(count: String) {
        let badge = RealmManager.shared.getCart().count
        tabBarController?.tabBar.items?.last?.badgeValue = badge == 0 ? nil : "\(badge)"
    }
}
