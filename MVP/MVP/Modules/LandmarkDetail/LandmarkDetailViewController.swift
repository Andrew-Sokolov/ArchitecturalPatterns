//
//  LandmarkDetailViewController.swift
//  MVP
//

import MapKit

class LandmarkDetailViewController: UIViewController {
    
    var presenter: LandmarkDetailViewRequestsToPresenter!
    
    private unowned var pictureView: UIImageView!
    private unowned var nameLabel: UILabel!
    private unowned var parkLabel: UILabel!
    private unowned var stateLabel: UILabel!
    private unowned var mapView: MKMapView!
    
}

extension LandmarkDetailViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        pictureView = UIImageView().addedTo(view)
        
        nameLabel = UILabel().addedTo(view)
        nameLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        parkLabel = UILabel().addedTo(view)
        parkLabel.textColor = .secondaryLabel
        parkLabel.font = .systemFont(ofSize: 17)
        parkLabel.numberOfLines = 2
        
        stateLabel = UILabel().addedTo(view)
        stateLabel.textColor = .secondaryLabel
        stateLabel.font = .systemFont(ofSize: 17)
        
        mapView = MKMapView().addedTo(view)
        
        setConstraints()
        getLandmark()
    }
    
}

extension LandmarkDetailViewController {
    
    private func setConstraints() {
        pictureView
            .leftEdge(.doubleIndent, of: view)
            .safeTopEdge(-52, of: view)
            .height(100)
            .widthToHeight(aspectRatio: 1)
        
        mapView
            .leftEdge(0, of: view)
            .rightEdge(0, of: view)
            .top(.doubleIndent, of: pictureView)
            .bottomEdge(0, of: view)
        
        nameLabel
            .left(.doubleIndent, of: pictureView)
            .rightEdge(.doubleIndent, of: view)
            .topEdge(0, of: pictureView)
            .height(25)
        
        stateLabel
            .leftEdge(0, of: nameLabel)
            .rightEdge(0, of: nameLabel)
            .bottomEdge(0, of: pictureView)
            .height(21)
        
        parkLabel
            .leftEdge(0, of: nameLabel)
            .rightEdge(0, of: nameLabel)
            .bottom(.indent, of: stateLabel)
    }
    
}

extension LandmarkDetailViewController {
    
    private func getLandmark() {
        pictureView.image = UIImage(named: presenter.imageName)
        nameLabel.text = presenter.name
        parkLabel.text = presenter.park
        stateLabel.text = presenter.state
        mapView.setCenter(presenter.coordinates, spanDelta: 3)
    }
    
}
