//
//  LandmarkDetailModel.swift
//  MVP
//

class LandmarkDetailModel: LandmarkDetailPresentorRequestsToModel {
    
    let landmark: Landmark
    
    init(landmark: Landmark) {
        self.landmark = landmark
    }
    
}
