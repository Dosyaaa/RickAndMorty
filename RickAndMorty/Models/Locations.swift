//
//  Locations.swift
//  RickAndMorty
//
//  Created by Mac on 15/4/2023.
//

import Foundation

// MARK: - HTTPSRickandmortyapiCOMAPILocation
struct RickandmortyAPILocation: Codable {
    let info: InfoLocation
    let results: [ResultLocation]
}

// MARK: - Info
struct InfoLocation: Codable {
    let count, pages: Int
    let next: String
    
}

// MARK: - Result
struct ResultLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}

