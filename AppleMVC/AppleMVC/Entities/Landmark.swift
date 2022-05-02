//
//  Landmark.swift
//  AppleMVC
//

struct Landmark: Decodable {
    let name: String
    let state: String
    let park: String
    let coordinates: Coordinates
    let imageName: String
    
    struct ShortFormat {
        let name: String
        let imageName: String
    }
    
    var shortFormat: ShortFormat {
        ShortFormat(name: name, imageName: imageName)
    }
    
}
