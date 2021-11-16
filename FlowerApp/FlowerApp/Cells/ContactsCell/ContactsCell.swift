//
//  ContactsCell.swift
//  FlowerApp
//
//  Created by Евгений on 16.11.21.
//

import UIKit

class ContactsCell: UITableViewCell {


    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var textCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }


func openApplication(application: Application) {
    switch application {
    case .facebook:
        print("Facebook")
    case .instagram:
        let application = UIApplication.shared
        let appURL = URL(string: "instagram://user?username=zhorawow")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
            let webURL = URL(string: "https://instagram.com/zhorawow/")!
                    application.open(webURL)
        }
        
        print("insta")
    case .telegram:
        print("telega")
    case .vk:
        print("vk")
    case .viber:
        print("viber")
    case .googleMap:
        print("google")
    case .phone:
        print("call")
    }
}
}
