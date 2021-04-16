//
//  User.swift
//  SimpleMap
//
//  Created by Anton Redkozubov on 16.04.2021.
//

import Foundation
import MapKit


class Info: NSObject, MKAnnotation {
    
    var coordinate : CLLocationCoordinate2D
    var title: String?
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
