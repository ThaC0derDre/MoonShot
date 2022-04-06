//
//  AstronautView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/6/22.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronauts
    
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackgound)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronaut: [String: Astronauts] = Bundle.main.decode("astronauts.json")
    static var previews: some View {
        AstronautView(astronaut: astronaut["armstrong"]!)
            .preferredColorScheme(.dark)
    }
}
