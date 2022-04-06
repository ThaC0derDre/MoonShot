//
//  MissionView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/6/22.
//

import SwiftUI

struct MissionView: View {
    
    struct CrewMember {
        let role: String
        let astronaut: Astronauts
    }
    
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
                    
                    VStack(alignment: .leading){
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        
                        Text(missions.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(crew, id: \.role){ member in
                            NavigationLink{
                                Text("Crew Detail")
                            } label: {
                                Image(member.astronaut.id)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 102, height: 74)
                                    .clipShape(Capsule())
                                    .overlay(
                                        Capsule()
                                            .strokeBorder(.white, lineWidth: 1)
                                    )
                                
                                VStack{
                                    Text(member.astronaut.name)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.horizontal)
                                    
                                    Text(member.role)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
            }
        }
        .navigationTitle(missions.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackgound)
    }
    
    init(mission: Missions, astronauts: [String: Astronauts]){
        self.missions = mission
        self.crew = mission.crew.map({ member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            }
            else{
                fatalError("Failed to find \(member) in \(mission.displayName)")
            }
        })
    }
}

struct MissionView_Previews: PreviewProvider {
    static var missions: [Missions]  = Bundle.main.decode("missions.json")
    static var astronuat: [String: Astronauts] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        MissionView(mission: missions[0], astronauts: astronuat)
            .preferredColorScheme(.dark)
    }
}
