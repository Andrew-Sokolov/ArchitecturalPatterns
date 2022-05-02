//
//  LandmarkListRouter.swift
//  VIPER
//

class LandmarkListRouter {
    
    unowned var controller: RoutableController!
    
}

extension LandmarkListRouter: LandmarkListPresenterRequestsToRouter {
    
    func showDetails(for landmark: Landmark) {
        let landmarkDetailModule = LandmarkDetailBuilder.createModule(landmark: landmark)
        controller.show(landmarkDetailModule, sender: nil)
    }
    
}
