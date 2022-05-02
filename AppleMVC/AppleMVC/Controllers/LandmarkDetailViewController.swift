//
//  LandmarkDetailViewController.swift
//  AppleMVC
//

import MapKit

class LandmarkDetailViewController: UIViewController {
    
    var landmark: Landmark?
    
    @IBOutlet private weak var pictureView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var parkLabel: UILabel!
    @IBOutlet private weak var stateLabel: UILabel!
    @IBOutlet private weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let landmark = landmark else { return }
        
        pictureView.image = UIImage(named: landmark.imageName)
        nameLabel.text = landmark.name
        parkLabel.text = landmark.park
        stateLabel.text = landmark.state
        mapView.setCenter(landmark.coordinates, spanDelta: 3)
    }
    
}
