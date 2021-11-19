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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.isMyLocationEnabled = true
        createPin()
        correctButton()
    }
    
    @IBAction func makeTripAction(_ sender: Any) {
        let application = UIApplication.shared
        let appURL = URL(string: "comgooglemaps://?saddr=&daddr=53.913147,27.593101&directionsmode=driving")!
        if application.canOpenURL(appURL) {
            application.open(appURL, options: [:], completionHandler: nil)
        } else {
            let webURL = URL(string: "https://www.google.co.in/maps/dir/?saddr=&daddr=53.913147,27.593101&directionsmode=driving")!
            application.open(webURL)
        }
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




