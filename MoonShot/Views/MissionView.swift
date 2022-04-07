//
//  MissionView.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/6/22.
//

import SwiftUI

struct MissionView: View {
    
    let missions: Missions
    let crew: [CrewMember]
    
    var body: some View {
        MissionScrollView(missions: missions, crew: crew)
        .navigationTitle(missions.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackgound)
    }
    
    init(mission: Missions, astronauts: [String: Astronauts]){
        self.missions = mission
        self.crew = mission.crew.map{ member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            }
            else{
                fatalError("Failed to find \(member) in \(mission.displayName)")
            }
        }
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
