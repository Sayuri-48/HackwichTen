//
//  secondRestaurant.swift
//  HackwichTen
//
//  Created by binh phan on 11/13/23.
//

import UIKit
import MapKit

class secondRestaurant: NSObject, MKAnnotation {
    
    //Problem Set1
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
             {
                 self.restaurantTitle = title
                 self.restaurantType = type
                 self.coordinate = coordinate
                 
                 super.init()
             }
    
    //Part 5
    var subtitle: String?
    {
        //Problem Set #3 Code Switch
        return restaurantType
    }

}
