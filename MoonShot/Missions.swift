//
//  Missions.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/4/22.
//

import Foundation

struct Missions: Codable, Identifiable {
    
    struct Crew: Codable {
        let name: String
        let role: String
    }
    
    
    let id: Int
    let crew: [Crew]
    let description: String
    let launchDate: Date?
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var imageName: String {
        "apollo\(id)"
    }
    
    var formattedLaunchdate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
