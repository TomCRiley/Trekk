//
//  ContentView.swift
//  Trekk
//
//  Created by Tom Riley on 18/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("highlands")
                .resizable()
                .scaledToFit()
                
            Text("The Highlands")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
