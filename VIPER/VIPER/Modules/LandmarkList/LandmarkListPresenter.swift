//
//  LandmarkListPresenter.swift
//  VIPER
//

import Foundation

class LandmarkListPresenter {
    
    var interactor: LandmarkListPresentorRequestsToInteractor!
    var router: LandmarkListPresenterRequestsToRouter!
    
}

extension LandmarkListPresenter: LandmarkListViewRequestsToPresenter {
    
    var title: String {
        interactor.title
    }
    
    var count: Int {
        interactor.landmarks.count
    }
    
    private func landmark(by index: Int) -> Landmark? {
        index < count ? interactor.landmarks[index] : nil
    }
    
    func shortLandmark(by index: Int) -> Landmark.ShortFormat? {
        landmark(by: index)?.shortFormat
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        guard let landmark = landmark(by: indexPath.row) else { return }
        
        router.showDetails(for: landmark)
    }
    
}
