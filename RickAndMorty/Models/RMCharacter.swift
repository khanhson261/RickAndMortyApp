//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/27/22.
//

import Foundation
// MARK: - Character
struct Character: Codable {
    let id: Int
    let name, species, type: String
    let status: RMCharacterStatus
    let gender: RMCharacterGender
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
