//
//  LandmarkDetailBuilder.swift
//  MVVM
//

import UIKit

class LandmarkDetailBuilder {
    
    static func createModule(landmark: Landmark) -> UIViewController {
        let viewController = LandmarkDetailViewController()
        let viewModel = LandmarkDetailViewModel()
        let model = LandmarkDetailModel(landmark: landmark)
        
        viewController.viewModel = viewModel
        viewModel.model = model
        
        return viewController
    }
    
}
