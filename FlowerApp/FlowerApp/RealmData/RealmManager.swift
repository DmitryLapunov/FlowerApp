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
    
    func getProducts() -> [ProductObject] {
        return Array(realm.objects(ProductObject.self))
    }
    
    func writeProduct(product: ProductObject) {
        try! realm.write {
            realm.add(product)
        }
    }
    
    func clearRealm() {
        try! realm.write {
            realm.deleteAll()
        }
    }
}
