//
//  LandmarkDetailPresenter.swift
//  VIPER
//

class LandmarkDetailPresenter {
    
    var interactor: LandmarkDetailPresentorRequestsToInteractor!
    
}

extension LandmarkDetailPresenter: LandmarkDetailViewRequestsToPresenter {
    
    var imageName: String {
        interactor.landmark.imageName
    }
    
    var name: String {
        interactor.landmark.name
    }
    
    var park: String {
        interactor.landmark.park
    }
    
    var state: String {
        interactor.landmark.state
    }
    
    var coordinates: Coordinates {
        interactor.landmark.coordinates
    }
    
}
