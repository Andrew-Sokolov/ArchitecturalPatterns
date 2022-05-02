//
//  LandmarkListProtocols.swift
//  MVP
//

import Foundation

protocol LandmarkListViewRequestsToPresenter: AnyObject {
    var title: String { get }
    var count: Int { get }
    func shortLandmark(by index: Int) -> Landmark.ShortFormat?
    func didSelectRow(at indexPath: IndexPath)
}

protocol LandmarkListPresenterRequestsToView: AnyObject {
    func showDetails(for landmark: Landmark)
}

protocol LandmarkListPresentorRequestsToModel: AnyObject {
    var title: String { get }
    var landmarks: [Landmark] { get }
}
