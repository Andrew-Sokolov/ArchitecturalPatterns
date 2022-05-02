//
//  LandmarkCell.swift
//  MVP
//

import UIKit

class LandmarkCell: UITableViewCell {
    
    @IBOutlet private weak var pictureView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
}

extension LandmarkCell {
    
    func setup(with shortLandmark: Landmark.ShortFormat) {
        pictureView.image = UIImage(named: shortLandmark.imageName)
        nameLabel.text = shortLandmark.name
    }
    
}

extension LandmarkCell {
    
    static func create() -> LandmarkCell {
        UINib(nibName: "LandmarkCell", bundle: nil).instantiate(withOwner: self, options: nil).last as! LandmarkCell
    }
    
}
