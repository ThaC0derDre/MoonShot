//
//  ScrollView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/6/22.
//

import SwiftUI

struct MissionScrollView: View {
    let missions: Missions
    
    let crew: [CrewMember]
    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                VStack{
                    Image(missions.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    Text(missions.formattedLaunchDate)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.lightBackground)
                        .padding(.vertical)
                    
                    VStack(alignment: .leading){
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        
                        Text(missions.description)
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(.lightBackground)
                            .padding(.vertical)
                        
                        Text("Crew")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)
                }
                CrewMemberScrollView(crew: crew)
                .padding(.bottom)
                
            }
            
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
