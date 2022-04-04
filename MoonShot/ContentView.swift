//
//  ContentView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/2/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts  = Bundle.main.decode("astronauts.json")
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
