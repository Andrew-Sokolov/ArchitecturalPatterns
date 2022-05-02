//
//  LandmarkDetailViewModel.swift
//  MVVM
//

import MapKit

class LandmarkDetailViewModel {
    
    var model: LandmarkDetailViewModelRequestsToModel!
    
    @Published private var image: UIImage?
    @Published private var name: String?
    @Published private var park: String?
    @Published private var state: String?
    @Published private var region = MKCoordinateRegion()
    
}

extension LandmarkDetailViewModel: LandmarkDetailViewRequestsToViewModel {
    
    var imagePublisher: Published<UIImage?>.Publisher { $image }
    var namePublisher: Published<String?>.Publisher { $name }
    var parkPublisher: Published<String?>.Publisher { $park }
    var statePublisher: Published<String?>.Publisher { $state }
    var regionPublisher: Published<MKCoordinateRegion>.Publisher { $region }
    
    func getLandmark() {
        let landmark = model.landmark
        
        image = UIImage(named: landmark.imageName)
        name = landmark.name
        park = landmark.park
        state = landmark.state
        
        var region = MKCoordinateRegion()
        region.center.latitude = landmark.coordinates.latitude
        region.center.longitude = landmark.coordinates.longitude
        region.span.latitudeDelta = 3
        region.span.longitudeDelta = 3
        self.region = region
    }
    
}
