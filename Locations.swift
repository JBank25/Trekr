//
//  Locations.swift
//  Trekr
//
//  Created by Joshua Urbank on 10/15/22.
//

import Foundation

/**
 structs are made in unique copies across the project.
 Locations is an ObservableObject meaning swiftUI will watch this for changes.
 */
class Locations: ObservableObject
{
    //hold many locations here
    let places : [Location]
    
    var primary: Location{
        places[0]
    }
    
    init()
    {
        //find the locations.json file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        // ! means this WILL work and if not crash the applications
        let data =  try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
}
