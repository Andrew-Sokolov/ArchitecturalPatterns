//
//  LandmarkListViewController.swift
//  MVVM
//

import UIKit

class LandmarkListViewController: UITableViewController {
    
    var viewModel: LandmarkListViewRequestsToViewModel!
    
    private(set) lazy var dataSource = UITableViewDiffableDataSource<Int, Landmark.ShortFormat>(tableView: tableView) { tableView, indexPath, shortLandmark in
        let cell = LandmarkCell.create()
        cell.setup(with: shortLandmark)
        return cell
    }
    
}

extension LandmarkListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = viewModel.title
        tableView.dataSource = dataSource
        
        viewModel.fetchLandmarks()
    }
    
}

extension LandmarkListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelectRow(at: indexPath)
    }
    
}

extension LandmarkListViewController: LandmarkListViewModelRequestsToView {
    
    func showDetails(for landmark: Landmark) {
        let landmarkDetailModule = LandmarkDetailBuilder.createModule(landmark: landmark)
        show(landmarkDetailModule, sender: nil)
    }
    
}
