//
//  ViewController.swift
//  GPS and map
//
//  Created by Student on 2020-02-18.
//  Copyright © 2020 Kaiyum. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    
    let lm = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        // Delegate View Controller to CLLocationManager to handle location data provided by the class
        lm.delegate = self
        
//        Instruct GPS to start gathering data
        lm.startUpdatingLocation()
//        Additionally get permission from user to use GPS
        lm.requestWhenInUseAuthorization()
        
        map.showsUserLocation = true
    }

//    Get GPS Locations
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
//        TODO:: make it swifty way
        let lat = locations.last!.coordinate.latitude
        let long = locations.last!.coordinate.longitude
        
        print("Lat: \(lat) and Long: \(long)" )
    }
}

