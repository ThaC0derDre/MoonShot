//
//  Bundle-Decodable.swift
//  MoonShot
//
//  Created by Andres Gutierrez on 4/4/22.
//

import Foundation

extension Bundle{
    func decode(_ file: String) -> [String:Astronauts] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) from Bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from Bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String:Astronauts].self, from: data) else {
            fatalError("Failed to decode \(file) from Bundle")
        }
        return loaded
    }
}
