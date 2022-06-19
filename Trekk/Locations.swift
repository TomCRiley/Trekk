//
//  Locations.swift
//  Trekk
//
//  Created by Tom Riley on 19/06/2022.
//

import Foundation

// classes are designed to be shared, we want this to the JSON file once and then share it everywhere.
//observableObject is similar to contentView. SwiftUI will watch this object for changes.

class Locations: ObservableObject {
    let places: [Location]     //array of Locations
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data) 
    }

}
