//
//  Mappble.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 19.04.23.
//

import Foundation.NSJSONSerialization

protocol Mappable where Self: Encodable {
    func mapToDictionary() -> [String: Any]
}

extension Mappable {
    func mapToDictionary() -> [String: Any] {
        let jsonEncoder = JSONEncoder()
        jsonEncoder.keyEncodingStrategy = .convertToSnakeCase
        
        guard let data = try? jsonEncoder.encode(self),
              let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            return [:]
        }
        return dictionary
    }
}
