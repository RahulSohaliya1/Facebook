//
//  NotificationsCollectionViewCell.swift
//  Facebook
//
//  Created by Rahul on 15/04/23.
//

import UIKit

class NotificationsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var notificationImageView: UIImageView!
    
    @IBOutlet weak var notficationLabel: UILabel!
    
    @IBOutlet weak var menuButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
        
    }
}
