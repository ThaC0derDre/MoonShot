//
//  ContentView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronauts]    = Bundle.main.decode("astronauts.json")
    let missions: [Missions]                = Bundle.main.decode("missions.json")
    var body: some View {
        Text("\(astronauts.count)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
