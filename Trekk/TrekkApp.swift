//
//  TrekkApp.swift
//  Trekk
//
//  Created by Tom Riley on 18/06/2022.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }

                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }
            .environmentObject(locations)
        }
    }
}
