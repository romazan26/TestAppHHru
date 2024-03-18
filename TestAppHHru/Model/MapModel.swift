//
//  MapModel.swift
//  TestAppHHru
//
//  Created by Роман on 18.03.2024.
//

import Foundation
import MapKit

struct AddressMap: Codable {
    let data: [Datum]
}
 
struct Datum: Codable {
    let latitube, longitube: Double
    let name: String?
}

struct Location: Identifiable{
    let id = UUID()
    let name: String?
    let coordinate: CLLocationCoordinate2D
}
