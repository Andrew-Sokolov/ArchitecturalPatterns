//
//  LandmarkListProtocols.swift
//  MVVM
//

import UIKit

protocol LandmarkListViewRequestsToViewModel: AnyObject {
    var title: String { get }
    func fetchLandmarks()
    func didSelectRow(at indexPath: IndexPath)
}

protocol LandmarkListViewModelRequestsToView: AnyObject {
    var dataSource: UITableViewDiffableDataSource<Int, Landmark.ShortFormat> { get }
    func showDetails(for landmark: Landmark)
}

protocol LandmarkListViewModelRequestsToModel: AnyObject {
    var title: String { get }
    var landmarks: [Landmark] { get }
}
