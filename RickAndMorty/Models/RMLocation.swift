//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/27/22.
//

import Foundation

// MARK: - Location
struct Location: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
