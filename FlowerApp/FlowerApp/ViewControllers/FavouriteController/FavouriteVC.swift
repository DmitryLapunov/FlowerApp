//
//  FavouriteVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class FavouriteVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayProducts: [ProductObject] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Избранное"
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: String(describing: FavouriteCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: FavouriteCell.self))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        arrayProducts.removeAll()
        arrayProducts = RealmManager.shared.getProducts()
    }
    
    
}

extension FavouriteVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FavouriteCell.self),for: indexPath)
        guard let favouriteCell = cell as? FavouriteCell else { return cell }
        favouriteCell.productNameLabel.text = arrayProducts[indexPath.row].productName
        favouriteCell.delegate = self
        return favouriteCell
    }
    
    
    
}

extension FavouriteVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension FavouriteVC: ReloadCellFavourite {
    func reloadCell() {
        arrayProducts = RealmManager.shared.getProducts()
    }
    
    
}
