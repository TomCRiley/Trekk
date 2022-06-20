//
//  TrekkApp.swift
//  Trekk
//
//  Created by Tom Riley on 18/06/2022.
//

import SwiftUI

@main
struct TrekkApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView {
                    ContentView(location: Locations().primary)
                }
                .tabItem() {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
            }
        }
    }
}
