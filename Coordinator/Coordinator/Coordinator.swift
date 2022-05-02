//
//  Coordinator.swift
//  Coordinator
//

import UIKit

class Coordinator {
    
    private unowned var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LandmarkListViewController.create()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func showDetails(for landmark: Landmark) {
        let vc = LandmarkDetailViewController.create()
        vc.coordinator = self
        vc.landmark = landmark
        navigationController.pushViewController(vc, animated: true)
    }
    
}
