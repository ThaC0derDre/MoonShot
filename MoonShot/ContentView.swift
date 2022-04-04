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
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:columns){
                    ForEach(missions) { mission in
                        NavigationLink{
                            Text("Detail View")
                        }label: {
                            VStack{
                                Image(mission.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                    
                                    Text(mission.launchDate ?? "N/A")
                                        .font(.caption)
                                }
                                .frame(maxWidth: .infinity)
                            }
                        }
                    }
                }
            }
            .navigationTitle("MoonShot")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
