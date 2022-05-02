//
//  LandmarkListViewModel.swift
//  MVVM
//

import UIKit

class LandmarkListViewModel {
    
    unowned var view: LandmarkListViewModelRequestsToView!
    var model: LandmarkListViewModelRequestsToModel!
    
    private var shortLandmarks = [Landmark.ShortFormat]() {
        didSet {
            var snapshot = NSDiffableDataSourceSnapshot<Int, Landmark.ShortFormat>()
            snapshot.appendSections([0])
            snapshot.appendItems(shortLandmarks, toSection: 0)
            
            view.dataSource.apply(snapshot, animatingDifferences: false)
        }
    }
    
}

extension LandmarkListViewModel: LandmarkListViewRequestsToViewModel {
    
    var title: String {
        model.title
    }
    
    func fetchLandmarks() {
        var shortLandmarks = [Landmark.ShortFormat]()
        
        model.landmarks.forEach {
            shortLandmarks.append($0.shortFormat)
        }
        
        self.shortLandmarks = shortLandmarks
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        guard indexPath.row < model.landmarks.count else { return }
        
        view.showDetails(for: model.landmarks[indexPath.row])
    }
    
}
