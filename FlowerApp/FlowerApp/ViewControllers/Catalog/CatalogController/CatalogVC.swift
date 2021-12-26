//
//  CatalogVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 13.11.21.
//

var arrayGlobalProducts: [Product] = []

import UIKit

class CatalogVC: UIViewController {
    @IBOutlet weak var catalogCollectionView: UICollectionView!
    
    let categories = CategoryType.allCases
    var parsedJSON: ParsedJSON?
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Каталог"
        setupCollectionView()
        parseJSON()
        writeGlobalAraay()
    }
    
    private func writeGlobalAraay() {
        if let parsedProducts = parsedJSON {
            arrayGlobalProducts = parsedProducts.data
        }
    }
    
    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "vgosti", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        guard let jsonData = try? Data(contentsOf: url) else { return }
        
        parsedJSON = try? JSONDecoder().decode(ParsedJSON.self, from: jsonData)
        if let parsedProducts = self.parsedJSON {
            self.products = parsedProducts.data
        }
    }
}

//MARK: UICollectionViewDataSource
extension CatalogVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DiscountCell.self), for: indexPath)
            guard let discountCell = cell as? DiscountCell else { return cell }
            return discountCell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CategoryCell.self), for: indexPath)
            guard let categoryCell = cell as? CategoryCell else { return cell }
            categoryCell.setupCategoryCell(category: categories[indexPath.row - 1])
            categoryCell.category = categories[indexPath.row - 1]
            return categoryCell
        }
        
    }
}

//MARK: UICollectionViewDelegate
extension CatalogVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filteredProducts = self.products.filter {
            product in product.category == categories[indexPath.row - 1].rawValue
        }
        
        let categoryVC = CategoryVC(nibName: String(describing: CategoryVC.self), bundle: nil)
        categoryVC.products = filteredProducts
        categoryVC.title = "\(categories[indexPath.row - 1].rawValue)"
        navigationController?.pushViewController(categoryVC, animated: true)
    }
}
