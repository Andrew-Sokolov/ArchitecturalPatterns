//
//  LandmarkDetailProtocols.swift
//  MVP
//

protocol LandmarkDetailViewRequestsToPresenter: AnyObject {
    var imageName: String { get }
    var name: String { get }
    var park: String { get }
    var state: String { get }
    var coordinates: Coordinates { get }
}

protocol LandmarkDetailPresentorRequestsToModel: AnyObject {
    var landmark: Landmark { get }
}
