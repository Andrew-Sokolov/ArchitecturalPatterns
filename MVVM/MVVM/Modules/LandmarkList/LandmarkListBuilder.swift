//
//  LandmarkListBuilder.swift
//  MVVM
//

import UIKit

class LandmarkListBuilder {
    
    static func createModule(dataFile fileName: String) -> UIViewController {
        let viewController = LandmarkListViewController(style: .plain)
        let viewModel = LandmarkListViewModel()
        let model = LandmarkListModel(dataFile: fileName)
        
        viewController.viewModel = viewModel
        viewModel.view = viewController
        viewModel.model = model
        
        return viewController
    }
    
}
