//
//  BackendAPI.swift
//  FlowerApp
//
//  Created by Евгений on 9.01.22.
//

import Foundation
import Moya

enum BackendAPI {
    case sendToBot(itemImfo: String, deliveryType: String, deliveryPrice: String, clientPhone: String, clientName: String, deliveryAddress: String, userID: String, paymentType: String, cost: String)
}

extension BackendAPI: TargetType {
    var baseURL: URL {
        return URL(string: "http://195.201.138.66:5000")!
    }
    
    var path: String {
        switch self {
        case .sendToBot:
            return "/send_order/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .sendToBot:
            return .post
        }
    }
    
    var sampleData: Data {
        Data()
    }
    
    var task: Task {
        switch self {
        case .sendToBot:
            return .uploadMultipart(multipartBody)
        }
    }
    
    var multipartBody: [Moya.MultipartFormData] {
        switch self {
        case .sendToBot(let itemImfo, let deliveryType, let deliveryPrice, let clientPhone, let clientName, let deliveryAddress, let userID, let paymentType, let cost):
            var params = [String: String]()
            var multipartData = [MultipartFormData]()
            params["Item-Info"] = itemImfo
            params["Delivery-Type"] = deliveryType
//            params["Delivery-Type"] = "free"

            params["Delivery-Price"] = "\(deliveryPrice)"
            params["Client-Phone"] = clientPhone
            params["Client-Name"] = clientName
            params["Delivery-Address"] = deliveryAddress
            params["User-Id"] = "\(userID)"
            params["Payment-Type"] = paymentType
            params["Cost"] = cost
            
            for (key, value) in params {
                let formData = MultipartFormData(provider: .data(value.data(using: .utf8)!), name: key)
                multipartData.append(formData)
            }
            
            return multipartData
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .sendToBot:
            return ["Key" : "dSjg^%xsS##Gtd8^%xsahud632eYF^S$@@Rf*&("]
        }
    }
    
    var paramsEncoding: ParameterEncoding {
        return JSONEncoding.prettyPrinted
    }
    
}
