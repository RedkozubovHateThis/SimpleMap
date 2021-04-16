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
        let firstDot = Info(title: "Работа", coordinate: CLLocationCoordinate2D(latitude: 37.787600, longitude: -122.406417))
        
        let secondDot = Info(title: "Дом", coordinate: CLLocationCoordinate2D(latitude: 37.785100, longitude: -122.405700))
        
        let locationArray = [firstDot, secondDot]
        
        info.append(locationArray)
    }
    

}
