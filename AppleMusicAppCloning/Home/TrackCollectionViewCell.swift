//
//  TrackCollectionViewCell.swift
//  AppleMusicAppCloning
//
//  Created by Ji Chang Hyun on 2020/07/10.
//  Copyright © 2020 Nigostarr. All rights reserved.
//

import UIKit

class TrackCollectionViewCell : UICollectionViewCell {
    @IBOutlet weak var trackThumbnail: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        trackThumbnail.layer.cornerRadius = 10
        trackArtist.textColor = UIColor.systemGray2
    }
    
    func updateUI(item: Track?) {
        // TODO: 곡정보 표시하기
        guard let track = item else { return }
        trackThumbnail.image = track.artwork
        trackTitle.text = track.title
        trackArtist.text = track.artist
        
    }
}
