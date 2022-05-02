//
//  LandmarkListViewController.swift
//  VIPER
//

import UIKit

class LandmarkListViewController: UITableViewController, RoutableController {
    
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
        
        let cell = LandmarkCell()
        cell.setup(with: shortLandmark)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        LandmarkCell.height
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRow(at: indexPath)
    }
    
}
