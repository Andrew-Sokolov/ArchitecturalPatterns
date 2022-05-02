//
//  LandmarkDetailViewController.swift
//  VIPER
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
        
        getLandmark()
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

extension LandmarkDetailViewController {
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let pictureX: CGFloat = .doubleIndent
        let pictureY = view.safeAreaLayoutGuide.layoutFrame.origin.y - 52
        let pictureSide: CGFloat = 100
        
        pictureView.frame = CGRect(x: pictureX, y: pictureY, width: pictureSide, height: pictureSide)
        
        let mapX: CGFloat = 0
        let mapY = pictureY + pictureSide + .doubleIndent
        let mapWidth = view.frame.width
        let mapHeight = view.frame.height - mapY
        
        mapView.frame = CGRect(x: mapX, y: mapY, width: mapWidth, height: mapHeight)
        
        let nameX = pictureX + pictureSide + .doubleIndent
        let nameY = pictureY
        let nameWidth = view.frame.width - nameX - .doubleIndent
        let nameHeight: CGFloat = 25
        
        nameLabel.frame = CGRect(x: nameX, y: nameY, width: nameWidth, height: nameHeight)
        
        let stateWidth = nameWidth
        let stateHeight: CGFloat = 21
        let stateX = nameX
        let stateY = pictureY + pictureSide - stateHeight
        
        stateLabel.frame = CGRect(x: stateX, y: stateY, width: stateWidth, height: stateHeight)
        
        let parkWidth = nameWidth
        let parkHeight = parkLabel.sizeThatFits(CGSize(width: parkWidth, height: 1)).height
        let parkX = nameX
        let parkY = stateY - .indent - parkHeight
        
        parkLabel.frame = CGRect(x: parkX, y: parkY, width: parkWidth, height: parkHeight)
    }
    
}
