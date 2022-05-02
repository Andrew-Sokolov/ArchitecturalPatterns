//
//  LandmarkDetailPresenter.swift
//  CleanSwift
//

protocol LandmarkDetailPresentationLogic: AnyObject {
    func presentLandmark(response: LandmarkDetail.GetLandmark.Response)
}

class LandmarkDetailPresenter {
    
    unowned var viewController: LandmarkDetailDisplayLogic!
    
}

extension LandmarkDetailPresenter: LandmarkDetailPresentationLogic {
    
    func presentLandmark(response: LandmarkDetail.GetLandmark.Response) {
        let viewModel = LandmarkDetail.GetLandmark.ViewModel(displayedLandmark: response.landmark)
        viewController.displayLandmark(viewModel: viewModel)
    }
    
}
