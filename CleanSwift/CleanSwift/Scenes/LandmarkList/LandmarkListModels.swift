//
//  LandmarkListModels.swift
//  CleanSwift
//

enum LandmarkList {
    enum FetchLandmarks {
        struct Request {
        }
        
        struct Response {
            var landmarks: [Landmark]
        }
        
        struct ViewModel {
            struct DisplayedLandmark {
                let name: String
                let imageName: String
            }
            
            var displayedLandmarks: [DisplayedLandmark]
        }
    }
}
