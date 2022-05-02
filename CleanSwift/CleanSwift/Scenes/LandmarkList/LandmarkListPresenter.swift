//
//  LandmarkListPresenter.swift
//  CleanSwift
//

protocol LandmarkListPresentationLogic: AnyObject {
    func presentFetchedLandmarks(response: LandmarkList.FetchLandmarks.Response)
}

class LandmarkListPresenter {
    
    unowned var viewController: LandmarkListDisplayLogic!
    
}

extension LandmarkListPresenter: LandmarkListPresentationLogic {
    
    func presentFetchedLandmarks(response: LandmarkList.FetchLandmarks.Response) {
        var displayedLandmarks = [LandmarkList.FetchLandmarks.ViewModel.DisplayedLandmark]()
        
        response.landmarks.forEach {
            let displayedLandmark = LandmarkList.FetchLandmarks.ViewModel.DisplayedLandmark(name: $0.name, imageName: $0.imageName)
            displayedLandmarks.append(displayedLandmark)
        }
        
        let viewModel = LandmarkList.FetchLandmarks.ViewModel(displayedLandmarks: displayedLandmarks)
        viewController.displayFetchedLandmarks(viewModel: viewModel)
    }
    
}
