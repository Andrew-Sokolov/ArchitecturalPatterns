//
//  LandmarkDetailInteractor.swift
//  CleanSwift
//

protocol LandmarkDetailBusinessLogic: AnyObject {
    func getLandmark(request: LandmarkDetail.GetLandmark.Request)
}

protocol LandmarkDetailDataStore: AnyObject {
    var landmark: Landmark? { get set }
}

class LandmarkDetailInteractor: LandmarkDetailDataStore {
    
    var presenter: LandmarkDetailPresentationLogic!
    
    var landmark: Landmark?
    
}

extension LandmarkDetailInteractor: LandmarkDetailBusinessLogic {
    
    func getLandmark(request: LandmarkDetail.GetLandmark.Request) {
        guard let landmark = landmark else { return }
        let response = LandmarkDetail.GetLandmark.Response(landmark: landmark)
        presenter.presentLandmark(response: response)
    }
    
}
