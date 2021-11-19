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
        let application = UIApplication.shared
        let appURL = URL(string: "fb://page/?id=vgosti.by")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
            let webURL = URL(string: "https://www.facebook.com/vgosti.by/")!
                    application.open(webURL)
        }
        
    case .instagram:
        let application = UIApplication.shared
        let appURL = URL(string: "instagram://user?username=vgosti.by")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
            let webURL = URL(string: "https://instagram.com/vgosti.by/")!
                    application.open(webURL)
        }
        
    case .telegram:
        let application = UIApplication.shared
        let appURL = URL(string: "tg://resolve?domain=VgostiByBot")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
            let webURL = URL(string: "https://web.telegram.org/z/#1101369569")!
                    application.open(webURL)
        }
        
    case .vk:
        let application = UIApplication.shared
        let appURL = URL(string: "vk://vk.com/vgostiby")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
            let webURL = URL(string: "https://vk.com/vgostiby")!
                    application.open(webURL)
        }
        
    case .viber:
        let application = UIApplication.shared
        let appURL = URL(string: "viber://contact?number=+375291611666")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
           return
        }
        
    case .googleMap:
       break
        
    case .phoneGor:
        guard let url = URL(string: "telprompt://+375173963666"),
                UIApplication.shared.canOpenURL(url) else {
                return
            }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
    case .phoneMTS:
        guard let url = URL(string: "telprompt://+375297511777"),
                UIApplication.shared.canOpenURL(url) else {
                return
            }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        print("MTS")
        
    case .phoneA1:
        guard let url = URL(string: "telprompt://+375296683965"),
                UIApplication.shared.canOpenURL(url) else {
                return
            }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        print("A1")
        
    }
}
}
