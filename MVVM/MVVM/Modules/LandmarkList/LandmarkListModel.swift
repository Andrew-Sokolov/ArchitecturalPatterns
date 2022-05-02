//
//  LandmarkListModel.swift
//  MVVM
//

class LandmarkListModel: LandmarkListViewModelRequestsToModel {
    
    private let fileName: String
    
    init(dataFile fileName: String) {
        self.fileName = fileName
    }
    
    let title = "Landmarks"
    
    private(set) lazy var landmarks: [Landmark] = {
        AdapterJSONToArray(dataFile: fileName).convert()
    }()
    
}
