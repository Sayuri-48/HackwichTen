//
//  ViewController.swift
//  HackwichTen
//
//  Created by binh phan on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
        
    @IBOutlet weak var mapView: MKMapView!
    
    //Part 3
    let initialLocation = CLLocation(latitude: 21.361888, longitude:
         -158.056022)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 3
        centerMapOnLocation(location: initialLocation)
        
        //Part 5
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American",
                       coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude:
                       -158.080098))
                
        mapView.addAnnotation(restaurantOne)
    }
    
    //Part 3
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

               latitudinalMeters: CLLocationDistance(regionRadius),
               longitudinalMeters: CLLocationDistance(regionRadius))
               mapView.setRegion(coordinateRegion, animated: true)
           }
}

