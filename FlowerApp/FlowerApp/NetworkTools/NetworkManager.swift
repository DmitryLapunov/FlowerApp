//
//  NetworkManager.swift
//  FlowerApp
//
//  Created by Евгений on 9.01.22.
//

import Foundation
import Moya


class NetworkManager {
    private let provider = MoyaProvider<BackendAPI>(plugins: [NetworkLoggerPlugin()])
    static let shared = NetworkManager()
    private init() {}
    
    func sendToBot(itemImfo: [String], deliveryType: String, deliveryPrice: Double, clientPhone: String, clientName: String, deliveryAddress: String, userID: Int) {
        provider.request(.sendToBot(itemImfo: itemImfo, deliveryType: deliveryType, deliveryPrice: deliveryPrice, clientPhone: clientPhone, clientName: clientName, deliveryAddress: deliveryAddress, userID: userID)) { result in
            switch result {
            case .success(_):
                print("Success")
            case .failure(_):
                print("Error")
            }
        }
    }
}
