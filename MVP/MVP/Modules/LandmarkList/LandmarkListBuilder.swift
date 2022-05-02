//
//  LandmarkListBuilder.swift
//  MVP
//

import UIKit

class LandmarkListBuilder {
    
    static func createModule(dataFile fileName: String) -> UIViewController {
        let viewController = LandmarkListViewController(style: .plain)
        let presenter = LandmarkListPresenter()
        let model = LandmarkListModel(dataFile: fileName)
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.model = model
        
        return viewController
    }
    
}
