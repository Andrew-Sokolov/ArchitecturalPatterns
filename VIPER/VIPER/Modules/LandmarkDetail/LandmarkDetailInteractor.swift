//
//  LandmarkDetailInteractor.swift
//  VIPER
//

class LandmarkDetailInteractor: LandmarkDetailPresentorRequestsToInteractor {
    
    let landmark: Landmark
    
    init(landmark: Landmark) {
        self.landmark = landmark
    }
    
}
