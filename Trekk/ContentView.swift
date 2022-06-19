//
//  ContentView.swift
//  Trekk
//
//  Created by Tom Riley on 18/06/2022.
//

import SwiftUI

struct ContentView: View {
    
//    let id: Int
//    let name: String
//    let country: String
//    let description: String
//    let more: String
//    let latitude: Double
//    let longitude: Double
//    let heroPicture: String
//    let advisory: String
//    instead....
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
                
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ContentView(location:
                    Location.example)
            }
        }
    }
}
