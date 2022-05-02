//
//  LandmarkDetailRouter.swift
//  CleanSwift
//

protocol LandmarkDetailRoutingLogic: AnyObject {
}

protocol LandmarkDetailDataPassing: AnyObject {
    var dataStore: LandmarkDetailDataStore! { get }
}

class LandmarkDetailRouter: LandmarkDetailDataPassing {
    
    unowned var viewController: LandmarkDetailViewController!
    unowned var dataStore: LandmarkDetailDataStore!
    
}

extension LandmarkDetailRouter: LandmarkDetailRoutingLogic {
    
}
