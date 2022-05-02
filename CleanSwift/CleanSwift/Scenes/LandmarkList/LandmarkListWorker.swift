//
//  LandmarkListWorker.swift
//  CleanSwift
//

import Foundation

class LandmarkListWorker {
    
    private let fileName: String
    
    init(dataFile fileName: String) {
        self.fileName = fileName
    }
    
}

extension LandmarkListWorker {
    
    func convert() -> [Landmark] {
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil),
              let data = try? Data(contentsOf: file),
              let array = try? JSONDecoder().decode([Landmark].self, from: data) else {
            return []
        }
        
        return array
    }
    
}
