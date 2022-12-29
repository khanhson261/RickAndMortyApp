//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/27/22.
//

import Foundation

// MARK: - Episode
struct Episode: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String
    
}
