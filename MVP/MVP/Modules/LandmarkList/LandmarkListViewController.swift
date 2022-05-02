//
//  LandmarkListViewController.swift
//  MVP
//

import UIKit

class LandmarkListViewController: UITableViewController {
    
    var presenter: LandmarkListViewRequestsToPresenter!
    
}

extension LandmarkListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = presenter.title
    }
    
}

extension LandmarkListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let shortLandmark = presenter.shortLandmark(by: indexPath.row) else { return UITableViewCell() }
        
        let cell = LandmarkCell.create()
        cell.setup(with: shortLandmark)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRow(at: indexPath)
    }
    
}

extension LandmarkListViewController: LandmarkListPresenterRequestsToView {
    
    func showDetails(for landmark: Landmark) {
        let landmarkDetailModule = LandmarkDetailBuilder.createModule(landmark: landmark)
        show(landmarkDetailModule, sender: nil)
    }
    
}
