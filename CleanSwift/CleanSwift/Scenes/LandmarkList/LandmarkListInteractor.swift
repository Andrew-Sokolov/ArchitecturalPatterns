//
//  LandmarkListInteractor.swift
//  CleanSwift
//

protocol LandmarkListBusinessLogic: AnyObject {
    func fetchLandmarks(request: LandmarkList.FetchLandmarks.Request)
}

protocol LandmarkListDataStore: AnyObject {
    var landmarks: [Landmark] { get }
}

class LandmarkListInteractor: LandmarkListDataStore {
    
    var presenter: LandmarkListPresentationLogic!
    
    private let landmarkListWorker = LandmarkListWorker(dataFile: "landmarkData.json")
    private(set) lazy var landmarks = [Landmark]()
    
}

extension LandmarkListInteractor: LandmarkListBusinessLogic {
    
    func fetchLandmarks(request: LandmarkList.FetchLandmarks.Request) {
        landmarks = landmarkListWorker.convert()
        let response = LandmarkList.FetchLandmarks.Response(landmarks: landmarks)
        presenter.presentFetchedLandmarks(response: response)
    }
    
}
