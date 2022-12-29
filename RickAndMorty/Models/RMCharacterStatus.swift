//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/29/22.
//

import Foundation

// MARK: - RM Character Status
enum RMCharacterStatus: String, Codable {
    // alive, dead or unknown
    case dead = "Dead"
    case alive = "Alive"
    case `unknown` = "unknown"
}
