//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/29/22.
//

import Foundation
// MARK: -  RM Character Gender
enum RMCharacterGender: String, Codable {
    // male, female, genderless or unknown
    case dead = "Male"
    case alive = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
