//
//  FirstViewController.swift
//  Locations IOS 9 beta
//
//  Created by Brad Gray on 9/9/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class CurrentLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    
    
    var locationManager: CLLocationManager!

    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var longitude: UILabel!
    
    
    @IBOutlet weak var lattitude: UILabel!
    
    
    @IBAction func tagLocation(sender: UIButton) {
    }
    
    @IBAction func getLocation(sender: UIButton) {
        
        
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        
                var userLocation: CLLocation = locations[0] as! CLLocation
        
        
//        var latitude = userLocation.coordinate.latitude
//        var longitude = userLocation.coordinate.longitude
//        
//        
//        var latDelta = 0.05
//        var longDelta = 0.05
//        
//        var span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
//        
//        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lattitude, longitude)
//        
//        var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
//        
//        map.setRegion(region, animated: true)
        
        
                self.lattitude.text =  "\(userLocation.coordinate.latitude)"
                self.longitude.text =  "\(userLocation.coordinate.longitude)"
        
      
       CLGeocoder().reverseGeocodeLocation(userLocation) { (placemark, error) -> Void in
        
        if error != nil {
            
        
                
                print(error)
                
        }
        
        else
        
        {
            
            if let p = placemark?[0] {
                
                print(p)
                self.addressLabel.text = "\(p.subThoroughfare!) \(p.thoroughfare!) \(p.subAdministrativeArea!) \(p.postalCode!)"
                
            }
            
        }
        
        }
    


}
}

