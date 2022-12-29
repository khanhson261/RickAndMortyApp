//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/27/22.
//

import Foundation


/// Represent unique API endpoint
@frozen enum RMEndPoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
