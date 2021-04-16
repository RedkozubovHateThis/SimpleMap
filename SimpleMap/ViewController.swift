//
//  ViewController.swift
//  SimpleMap
//
//  Created by Anton Redkozubov on 15.04.2021.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkLocationEnable()
    }
    
    func checkLocationEnable() {
        if CLLocationManager.locationServicesEnabled(){
            setupManager()
        } else {
            
            let alert = UIAlertController(title: "У вас выключена геолокация", message: "Хотите включить", preferredStyle: .alert)
            
            let settingsAction = UIAlertAction(title: "Настройки", style: .default) { (alert) in
                if let url = URL(string: "App-Prefs:root=LOCATION_SERVICES"){
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
            
            let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
            
            
            alert.addAction(settingsAction)
            alert.addAction(cancelAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func setupManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }


}

extension ViewController: CLLocationManagerDelegate {
    
}
