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
    
    func sendToBot(itemImfo: String, deliveryType: String, deliveryPrice: String, clientPhone: String, clientName: String, deliveryAddress: String, userID: String, paymentType: String) {
        provider.request(.sendToBot(itemImfo: itemImfo, deliveryType: deliveryType, deliveryPrice: deliveryPrice, clientPhone: clientPhone, clientName: clientName, deliveryAddress: deliveryAddress, userID: userID, paymentType: paymentType)) { result in
            switch result {
            case .success(_):
                print("Success")
            case .failure(_):
                print("Error")
            }
        }
    }
}
