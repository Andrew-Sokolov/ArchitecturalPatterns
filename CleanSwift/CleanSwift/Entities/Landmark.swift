//
//  Landmark.swift
//  CleanSwift
//

struct Landmark: Decodable {
    let name: String
    let state: String
    let park: String
    let coordinates: Coordinates
    let imageName: String
}
