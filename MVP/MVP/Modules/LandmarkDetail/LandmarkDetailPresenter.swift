//
//  LandmarkDetailPresenter.swift
//  MVP
//

class LandmarkDetailPresenter {
    
    var model: LandmarkDetailPresentorRequestsToModel!
    
}

extension LandmarkDetailPresenter: LandmarkDetailViewRequestsToPresenter {
    
    var imageName: String {
        model.landmark.imageName
    }
    
    var name: String {
        model.landmark.name
    }
    
    var park: String {
        model.landmark.park
    }
    
    var state: String {
        model.landmark.state
    }
    
    var coordinates: Coordinates {
        model.landmark.coordinates
    }
    
}
