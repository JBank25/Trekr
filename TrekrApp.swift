//
//  TrekrApp.swift
//  Trekr
//
//  Created by Joshua Urbank on 10/15/22.
//

import SwiftUI

@main
struct TrekrApp: App {
    //@StateObjects MUST be observable objects. We create it once here
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView
            {
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem
                {
                    //built in icons used below
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView
                {
                    WorldView()
                }
                .tabItem
                {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }

            }
            //locations object now available to everyone
            .environmentObject(locations)
            
        }
    }
}
