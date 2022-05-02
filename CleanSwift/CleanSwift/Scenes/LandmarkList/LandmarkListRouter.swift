//
//  LandmarkListRouter.swift
//  CleanSwift
//

protocol LandmarkListRoutingLogic: AnyObject {
    func routeToLandmarkDetail()
}

protocol LandmarkListDataPassing: AnyObject {
    var dataStore: LandmarkListDataStore! { get }
}

class LandmarkListRouter: LandmarkListDataPassing {
    
    unowned var viewController: LandmarkListViewController!
    unowned var dataStore: LandmarkListDataStore!
    
}

extension LandmarkListRouter: LandmarkListRoutingLogic {
    
    func routeToLandmarkDetail() {
        let destinationVC = LandmarkDetailViewController()
        let destinationDS = destinationVC.router.dataStore
        passDataToLandmarkDetail(source: dataStore, destination: destinationDS)
        navigateToLandmarkDetail(source: viewController, destination: destinationVC)
    }
    
    private func passDataToLandmarkDetail(source: LandmarkListDataStore!, destination: LandmarkDetailDataStore!) {
        guard let selectedRow = viewController.tableView.indexPathForSelectedRow?.row else { return }
        destination.landmark = source.landmarks[selectedRow]
    }
    
    private func navigateToLandmarkDetail(source: LandmarkListViewController!, destination: LandmarkDetailViewController) {
        source.show(destination, sender: nil)
    }
    
}
