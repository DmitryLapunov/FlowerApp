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
        let alert = UIAlertController(title: "Выбор", message: "Выберете приложение", preferredStyle: .actionSheet)
        for app in self.installedNavigationApps {
            let button = UIAlertAction(title: app, style: .default, handler: { buttonAction in
            
                switch app {
                case "Apple Maps":
                    let appURLApple = URL(string: "maps://?daddr=53.913147,27.593101")!
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
        
        let cancelButton = UIAlertAction(title: "Отмена", style: .cancel) { cancel in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(cancelButton)
        
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


class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   @IBAction func showAlert(_ sender: Any) {
      let uialert = UIAlertController(title: "WELCOME", message: "Welcome to my tutorials, tap outside to dismiss the alert", preferredStyle: .alert)
      self.present(uialert, animated: true, completion:{
      uialert.view.superview?.isUserInteractionEnabled = true
      uialert.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
      })
   }
   @objc func dismissOnTapOutside(){
      self.dismiss(animated: true, completion: nil)
   }
}

