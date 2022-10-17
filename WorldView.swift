//
//  WorldView.swift
//  Trekr
//
//  Created by Joshua Urbank on 10/16/22.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    //swift finds the first Locations object ready for us to use
    @EnvironmentObject var locations: Locations
    
    //@State is a property wrapper that tells SwiftUI to keep this alive
    @State  var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    var body: some View {
        //$ gives two way binding meaning the value can be changed and
        //needs to be updated to refelect this (read and write binding)
        Map(coordinateRegion: $region,
            annotationItems: locations.places)
        {
            location in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.latitude))
            {
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 80, height: 40)
                    .shadow(radius: 3)
            }
        }
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
