//
//  LandmarkCell.swift
//  Coordinator
//

import UIKit

class LandmarkCell: UITableViewCell {
    
    @IBOutlet private weak var pictureView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    func setup(with shortLandmark: Landmark.ShortFormat) {
        pictureView.image = UIImage(named: shortLandmark.imageName)
        nameLabel.text = shortLandmark.name
    }
    
}
