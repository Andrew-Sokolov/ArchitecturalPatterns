//
//  LandmarkListViewController.swift
//  CleanSwift
//

import UIKit

protocol LandmarkListDisplayLogic: AnyObject {
    func displayFetchedLandmarks(viewModel: LandmarkList.FetchLandmarks.ViewModel)
}

class LandmarkListViewController: UITableViewController {
    
    var interactor: LandmarkListBusinessLogic!
    var router: (LandmarkListRoutingLogic & LandmarkListDataPassing)!
    
    private lazy var displayedLandmarks = [LandmarkList.FetchLandmarks.ViewModel.DisplayedLandmark]()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
}

extension LandmarkListViewController {
    
    private func setup() {
        let viewController = self
        let interactor = LandmarkListInteractor()
        let presenter = LandmarkListPresenter()
        let router = LandmarkListRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.viewController = viewController
        router.dataStore = interactor
    }
    
}

extension LandmarkListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Landmarks"
        fetchLandmarks()
    }
    
    private func fetchLandmarks() {
        let request = LandmarkList.FetchLandmarks.Request()
        interactor.fetchLandmarks(request: request)
    }
    
}

extension LandmarkListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        displayedLandmarks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let displayedLandmark = displayedLandmarks[indexPath.row]
        
        let cell = LandmarkCell()
        cell.pictureView.image = UIImage(named: displayedLandmark.imageName)
        cell.nameLabel.text = displayedLandmark.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        LandmarkCell.height
    }
    
}

extension LandmarkListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router.routeToLandmarkDetail()
    }
    
}

extension LandmarkListViewController: LandmarkListDisplayLogic {
    
    func displayFetchedLandmarks(viewModel: LandmarkList.FetchLandmarks.ViewModel) {
        displayedLandmarks = viewModel.displayedLandmarks
        tableView.reloadData()
    }
    
}
