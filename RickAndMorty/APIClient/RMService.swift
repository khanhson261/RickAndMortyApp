//
//  RMService.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/27/22.
//

import Foundation

/// Primary APi service object to  get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    /// Privatized constructor
    private init() {
        
    }
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - expecting: The type of object expect to get back
    ///   - completion: Callback with data or error
    public func executed <T:Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T,Error>) -> Void) {
        
    }
}
