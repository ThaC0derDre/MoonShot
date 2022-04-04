//
//  Missions.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/4/22.
//

import Foundation

struct Missions: Codable, Identifiable {
    struct Crew:Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let crew: [Crew]
    let launchDate: String?
    let description: String
    var displayName: String {
        "Apollo \(id)"
    }
    
    var imageName: String {
        "apollo\(id)"
    }
}
