//
//  LandmarkCell.swift
//  CleanSwift
//

import UIKit

class LandmarkCell: UITableViewCell {
    
    unowned var pictureView: UIImageView!
    unowned var nameLabel: UILabel!
    
    init() {
        super.init(style: .default, reuseIdentifier: nil)
        
        pictureView = UIImageView().addedTo(contentView)
        nameLabel = UILabel().addedTo(contentView)
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension LandmarkCell {
    
    static let height: CGFloat = 60
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let pictureX: CGFloat = .doubleIndent
        let pictureY: CGFloat = .indent
        let pictureSide = LandmarkCell.height - (pictureY * 2)
        
        pictureView.frame = CGRect(x: pictureX, y: pictureY, width: pictureSide, height: pictureSide)
        
        let nameX = pictureX + pictureSide + .doubleIndent
        let nameY = pictureY
        let nameWidth = contentView.frame.width - nameX - .doubleIndent
        let nameHeight = pictureSide
        
        nameLabel.frame = CGRect(x: nameX, y: nameY, width: nameWidth, height: nameHeight)
        
        separatorInset.left = nameX
    }
    
}
