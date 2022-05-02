//
//  NavigationController.swift
//  VIPER
//

import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let landmarkListModule = LandmarkListBuilder.createModule(dataFile: "landmarkData.json")
        viewControllers = [landmarkListModule]
    }
    
}
