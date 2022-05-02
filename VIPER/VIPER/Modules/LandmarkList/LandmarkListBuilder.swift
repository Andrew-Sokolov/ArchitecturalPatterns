//
//  LandmarkListBuilder.swift
//  VIPER
//

import UIKit

class LandmarkListBuilder {
    
    static func createModule(dataFile fileName: String) -> UIViewController {
        let viewController = LandmarkListViewController(style: .plain)
        let presenter = LandmarkListPresenter()
        let interactor = LandmarkListInteractor(dataFile: fileName)
        let router = LandmarkListRouter()
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        router.controller = viewController
        
        return viewController
    }
    
}
