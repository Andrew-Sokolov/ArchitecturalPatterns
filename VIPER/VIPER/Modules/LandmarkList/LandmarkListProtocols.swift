//
//  LandmarkListProtocols.swift
//  VIPER
//

import Foundation

protocol LandmarkListViewRequestsToPresenter: AnyObject {
    var title: String { get }
    var count: Int { get }
    func shortLandmark(by index: Int) -> Landmark.ShortFormat?
    func didSelectRow(at indexPath: IndexPath)
}

protocol LandmarkListPresentorRequestsToInteractor: AnyObject {
    var title: String { get }
    var landmarks: [Landmark] { get }
}

protocol LandmarkListPresenterRequestsToRouter: AnyObject {
    func showDetails(for landmark: Landmark)
}
