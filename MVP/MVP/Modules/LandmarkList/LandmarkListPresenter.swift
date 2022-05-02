//
//  LandmarkListPresenter.swift
//  MVP
//

import Foundation

class LandmarkListPresenter {
    
    unowned var view: LandmarkListPresenterRequestsToView!
    var model: LandmarkListPresentorRequestsToModel!
    
}

extension LandmarkListPresenter: LandmarkListViewRequestsToPresenter {
    
    var title: String {
        model.title
    }
    
    var count: Int {
        model.landmarks.count
    }
    
    private func landmark(by index: Int) -> Landmark? {
        index < count ? model.landmarks[index] : nil
    }
    
    func shortLandmark(by index: Int) -> Landmark.ShortFormat? {
        landmark(by: index)?.shortFormat
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        guard let landmark = landmark(by: indexPath.row) else { return }
        
        view.showDetails(for: landmark)
    }
    
}
