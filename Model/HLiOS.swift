//
//  HLiOS.swift
//  HLiOS
//
//  Created by Elisabeth Noble on 6/13/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct HLiOS: Hashable, Codable, Identifiable {
    var id: Int
    var artist: String
    var name: String
    var isFavorite: Bool
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
