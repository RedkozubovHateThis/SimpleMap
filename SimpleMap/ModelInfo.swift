//
//  InfoModel.swift
//  SimpleMap
//
//  Created by Anton Redkozubov on 16.04.2021.
//

import Foundation
import UIKit
import MapKit

class ModelInfo {
    var info = [[Info]]()
    init() {
        setup()
    }

    func setup() {
        let firstDot = Info(title: "Работа", coordinate: CLLocationCoordinate2D(latitude: 48.636317, longitude: 44.434000))
        
        let secondDot = Info(title: "Дом", coordinate: CLLocationCoordinate2D(latitude: 48.767623, longitude: 44.498221))
        
        let locationArray = [firstDot, secondDot]
        
        info.append(locationArray)
    }
    

}
