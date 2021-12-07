//
//  RealmManager.swift
//  FlowerApp
//
//  Created by Евгений on 20.11.21.
//

import Foundation
import Realm
import RealmSwift

class RealmManager {
    private let realm = try! Realm()
    static let shared = RealmManager()
    private init () {}
    
    func getBookmarks() -> [ProductObject] {
        return Array(realm.objects(ProductObject.self))
    }
    
    func writeBookmarks(product: ProductObject) {
        try! realm.write {
            realm.add(product)
        }
    }
    
    //    Error, eraze ALL DATA
    func clearBookmarks() {
        try! realm.write {
            realm.deleteAll()
        }
    }
    
    func deleteBookmarks(productName: String) {
        try! realm.write {
            realm.delete(realm.objects(ProductObject.self).filter("productName=%@", productName))
        }
    }
    
    //    MARK:
    //    MARK: Cart methods
    
    func getCart() -> [CartProduct] {
        return Array(realm.objects(CartProduct.self))
    }
    
    func writeCart(product: CartProduct) {
        let productInCart = checkInCart(productName: product.productName)
        try! realm.write {
            realm.add(productInCart == nil ? product : productInCart!)
        }
    }
    
    //    Error, eraze ALL DATA
    func clearCart() {
        try! realm.write {
            realm.deleteAll()
        }
    }
    
    func deleteCart(productName: String) {
        try! realm.write {
            realm.delete(realm.objects(CartProduct.self).filter("productName=%@", productName))
        }
    }
    
    func checkInCart(productName: String) -> CartProduct? {
        return getCart().filter({ $0.productName == productName }).first
    }
    
    
}
