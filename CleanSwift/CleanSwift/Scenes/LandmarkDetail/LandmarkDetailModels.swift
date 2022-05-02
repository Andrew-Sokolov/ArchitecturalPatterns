//
//  LandmarkDetailModels.swift
//  CleanSwift
//

enum LandmarkDetail {
    enum GetLandmark {
        struct Request {
        }
        
        struct Response {
            var landmark: Landmark
        }
        
        struct ViewModel {
            var displayedLandmark: Landmark
        }
    }
}
