//
//  LandmarkDetailBuilder.swift
//  MVP
//

import UIKit

class LandmarkDetailBuilder {
    
    static func createModule(landmark: Landmark) -> UIViewController {
        let viewController = LandmarkDetailViewController()
        let presenter = LandmarkDetailPresenter()
        let model = LandmarkDetailModel(landmark: landmark)
        
        viewController.presenter = presenter
        presenter.model = model
        
        return viewController
    }
    
}
