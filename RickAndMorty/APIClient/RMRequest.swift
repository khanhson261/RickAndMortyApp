//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Khanh Son on 12/27/22.
//

import Foundation

/// Object that represent a single API call
final class RMRequest {
    // MARK: - Private
    /// API constant
    private struct Constant {
      static let baseUrl = "https://rickandmortyapi.com/api/"
    }
    /// desired endpoint
    private  let endpoint: RMEndPoint
    /// optional pathComponents
    private let pathComponents: Set<String>
    /// optional queryParameters
    private let queryParameters: [URLQueryItem]
    /// constructed URL for the API request  in string format
    private var urlString: String {
        var url = Constant.baseUrl
        url += endpoint.rawValue
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                url += "/\($0)"
            }
        }
        //name=value&location=value
        if !queryParameters.isEmpty {
            url += "?"
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            url += argumentString
        }
       return url
    }
    /// the constructed  URL
    public var url: URL? {
        return URL(string: urlString)
    }
    /// desired HTTP method
    // MARK: - Public
    public var httpMethod = "GET"
    /// constructed request
    /// - Parameters:
    ///   - endpoint: target endpoint
    ///   - pathComponents: collection of path components
    ///   - queryParameters: collection of query parameters
    init(endpoint: RMEndPoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
