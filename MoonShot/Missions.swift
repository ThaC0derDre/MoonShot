//
//  Missions.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/4/22.
//

import Foundation

struct Missions: Codable, Identifiable {
    struct Crew:Codable, Identifiable {
        let id: String
        let role: String
    }
    
    let id: String
    let crew: [Crew]
    let launchDate: String?
}
