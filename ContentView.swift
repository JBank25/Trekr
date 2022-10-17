//
//  ContentView.swift
//  Trekr
//
//  Created by Joshua Urbank on 10/15/22.
//

import SwiftUI

//Custon data structure ContentView which is a view
struct ContentView: View {
    let location: Location
    var body: some View {
        //allows us to see the entirirt of the text we paste
        ScrollView
        {
            Image(location.heroPicture)
                .resizable()    //modifiers to the previous View Image
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .foregroundColor(.secondary)
            
            Text(location.description)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

//Note the below text is used strictly in the simulator and is in no way
//shippable
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView
        {
            NavigationView{
                ContentView(location: Locations().primary)
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
    }
}
