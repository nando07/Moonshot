//
//  Mission.swift
//  Moonshot
//
//  Created by Fernando Gomez on 2/20/23.
//

import Foundation


// This is the struct within a struct to read the JSON
struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
        
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
