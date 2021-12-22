//
//  GoogleMapVC.swift
//  FlowerApp
//
//  Created by Евгений on 17.11.21.
//

import UIKit
import GoogleMaps

class GoogleMapVC: UIViewController {
    
    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var makeTripButton: UIButton!
    
    var installedNavigationApps : [String] = ["Apple Maps"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.isMyLocationEnabled = true
        createPin()
        correctButton()
        checkApplication()
    }
    
    func checkApplication() {
        let application = UIApplication.shared
        
        if application.canOpenURL(URL(string: "comgooglemaps://")!) {
            self.installedNavigationApps.append("Google Maps")
        }
        
        if application.canOpenURL(URL(string: "yandexmaps://")!) {
            self.installedNavigationApps.append("Яндекс.Карты")
        }
    }
    
    @IBAction func makeTripAction(_ sender: Any) {
        
        let application = UIApplication.shared
        let alert = UIAlertController(title: "Selection", message: "Select Navigation App", preferredStyle: .actionSheet)
        for app in self.installedNavigationApps {
            let button = UIAlertAction(title: app, style: .default, handler: { buttonAction in
               
                switch app {
                case "Apple Maps":
                    let appURLApple = URL(string: "maps://?saddr=53.913147,27.593101")!
                    if application.canOpenURL(appURLApple) {
                        application.open(appURLApple, options: [:], completionHandler: nil)
                    }
                    
                case "Google Maps":
                    let appURLGoogle = URL(string: "comgooglemaps://?saddr=&daddr=53.913147,27.593101&directionsmode=driving")!
                    if application.canOpenURL(appURLGoogle) {
                        application.open(appURLGoogle, options: [:], completionHandler: nil)
                    } else {
                        let webURLGoogle = URL(string: "https://www.google.co.in/maps/dir/?saddr=&daddr=53.913147,27.593101&directionsmode=driving")!
                        application.open(webURLGoogle)
                    }
                    
                case "Яндекс.Карты":
                    let appURLYandex = URL(string: "yandexmaps://build_route_on_map/?lat_to=53.913147&lon_to=27.593101")!
                    if application.canOpenURL(appURLYandex) {
                        application.open(appURLYandex, options: [:], completionHandler: nil)
                    } else {
                        let webURLYandex = URL(string: "https://yandex.ru/maps/?rtext=~53.913147,27.593101&rtt=auto")!
                        application.open(webURLYandex)
                    }
                    
                default:
                    print("Error")
                }
            })
            alert.addAction(button)
        }
        present(alert, animated: true, completion: nil)
    }
    
    func correctButton() {
        makeTripButton.layer.cornerRadius = makeTripButton.frame.height / 2
        makeTripButton.backgroundColor = UIColor(named: "MainColor")
        
    }
    
    func createPin() {
        let pin = GMSMarker(position: CLLocationCoordinate2D(latitude: 53.913147, longitude: 27.593101))
        pin.title = "г. Минск, ул. Гикало 7А"
        pin.map = mapView
        centered()
        
    }
    
    func centered() {
        let camera = GMSCameraPosition(latitude: 53.913147, longitude: 27.593101, zoom: 15)
        mapView.camera = camera
    }
    
}




