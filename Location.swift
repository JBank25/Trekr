//
//  Location.swift
//  Trekr
//
//  Created by Joshua Urbank on 10/15/22.
//

import Foundation

struct Location : Decodable, Identifiable
{
    // the colon : tells swift what kind of data we are dealing with
    //all of these fields match the name in the JSON
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double//Double == double precision floating pt number
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    //static == exists only once
    static let example = Location(id: 1, name: "Great Smoky Mountains", country: "United States", description: "Good place", more: "MORE TEXT HERE", latitude: -83.5070, longitude: 35.456, heroPicture: "smokies", advisory: "Beware of Bears")
}
