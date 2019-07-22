//
//  Merchant.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 21/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Merchant: Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var coordinates: Coordinates
    var address: String
    var city: String
    var isFavorite: Bool = false

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
