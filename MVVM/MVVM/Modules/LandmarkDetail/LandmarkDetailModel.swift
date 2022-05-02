//
//  LandmarkDetailModel.swift
//  MVVM
//

class LandmarkDetailModel: LandmarkDetailViewModelRequestsToModel {
    
    let landmark: Landmark
    
    init(landmark: Landmark) {
        self.landmark = landmark
    }
    
}
