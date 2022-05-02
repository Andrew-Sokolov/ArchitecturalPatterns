//
//  LandmarkDetailProtocols.swift
//  MVVM
//

import MapKit

protocol LandmarkDetailViewRequestsToViewModel: AnyObject {
    var imagePublisher: Published<UIImage?>.Publisher { get }
    var namePublisher: Published<String?>.Publisher { get }
    var parkPublisher: Published<String?>.Publisher { get }
    var statePublisher: Published<String?>.Publisher { get }
    var regionPublisher: Published<MKCoordinateRegion>.Publisher { get }
    func getLandmark()
}

protocol LandmarkDetailViewModelRequestsToModel: AnyObject {
    var landmark: Landmark { get }
}
