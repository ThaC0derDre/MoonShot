//
//  MissionView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/6/22.
//

import SwiftUI

struct MissionView: View {
    let missions: Missions
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                VStack{
                    Image(missions.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    VStack(alignment: .leading){
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                            
                        Text(missions.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(missions.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.lightBackground)
    }
}

struct MissionView_Previews: PreviewProvider {
    static var missions: [Missions]  = Bundle.main.decode("missions.json")
    static var previews: some View {
        
        MissionView(missions: missions[0])
            .preferredColorScheme(.dark)
    }
}
