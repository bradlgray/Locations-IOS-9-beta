//
//  FirstViewController.swift
//  Locations IOS 9 beta
//
//  Created by Brad Gray on 9/9/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit
import CoreLocation

class CurrentLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!

    @IBOutlet weak var longitude: UILabel!
    
    
    @IBOutlet weak var lattitude: UILabel!
    
    
    @IBAction func tagLocation(sender: UIButton) {
    }
    
    @IBAction func getLocation(sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy - kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
         locationManager.startUpdatingLocation()

    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

