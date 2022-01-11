//
//  BackendAPI.swift
//  FlowerApp
//
//  Created by Евгений on 9.01.22.
//

import Foundation
import Moya

enum BackendAPI {
    case sendToBot(itemImfo: [String], deliveryType: String, deliveryPrice: Double, clientPhone: String, clientName: String, deliveryAddress: String)
}

extension BackendAPI: TargetType {
    var baseURL: URL {
        return URL(string: "http://46.175.171.141:8887")!
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
        guard let params = parametrs else {
            return .requestPlain
        }
        return .requestParameters(parameters: params, encoding: paramsEncoding)
    }
    
    var headers: [String : String]? {
        switch self {
        case .sendToBot:
            return ["Key" : "dSjg^%xsS##Gtd8^%xsahud632eYF^S$@@Rf*&("]
        }
    }
    
    var parametrs: [String: Any]? {
        var params = [String: Any]()
        switch self {
        case .sendToBot(let itemImfo, let deliveryType, let deliveryPrice, let clientPhone, let clientName, let deliveryAddress):
            params["Item-Info"] = itemImfo
            params["Delivery-Type"] = deliveryType
            params["Delivery-Price"] = deliveryPrice
            params["Client-Phone"] = clientPhone
            params["Client-Name"] = clientName
            params["Delivery-Address"] = deliveryAddress
//            params["User-Id"] = userId
        }
        return params
    }
    
    var paramsEncoding: ParameterEncoding {
        return JSONEncoding.prettyPrinted
    }
    
}
