//
//  LandmarkDetailBuilder.swift
//  VIPER
//

import UIKit

class LandmarkDetailBuilder {
    
    static func createModule(landmark: Landmark) -> UIViewController {
        let viewController = LandmarkDetailViewController()
        let presenter = LandmarkDetailPresenter()
        let interactor = LandmarkDetailInteractor(landmark: landmark)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        
        return viewController
    }
    
}
