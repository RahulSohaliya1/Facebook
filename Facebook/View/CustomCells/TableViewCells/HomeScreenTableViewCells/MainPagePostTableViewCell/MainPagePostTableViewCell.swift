//
//  MainPagePostTableViewCell.swift
//  Facebook
//
//  Created by Rahul on 10/03/23.
//

import UIKit

class MainPagePostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profilePicImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var sharesLabel: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var closeLabel: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentsButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellDesign()
        
    }
    
    private func cellDesign() {
        profilePicImage.layer.cornerRadius = 32
        profilePicImage.layer.masksToBounds = true
        
        menuButton.layer.cornerRadius = 19
        menuButton.layer.masksToBounds = true
        
        closeLabel.layer.cornerRadius = 19
        closeLabel.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func menuButtonClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func closeButtonClicked(_ sender: UIButton) {
        
    }
    
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        if likeButton.tag == 0 {
            likeButton.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
            likeButton.tag = 1
        }
        else {
            likeButton.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            likeButton.tag = 0
        }
    }
    
    @IBAction func commentsButtonClicked(_ sender: UIButton) {
        if commentsButton.tag == 0 {
            commentsButton.setImage(UIImage(systemName: "message.fill"), for: .normal)
            commentsButton.tag = 1
        }
        else {
            commentsButton.setImage(UIImage(systemName: "message"), for: .normal)
            commentsButton.tag = 0
        }
//        commentsButton.setImage(UIImage(systemName: "message.fill"), for: .normal)
    }
    
    @IBAction func sharesButtonClicked(_ sender: UIButton) {
        
        if shareButton.tag == 0 {
            shareButton.setImage(UIImage(systemName: "arrowshape.turn.up.forward.fill"), for: .normal)
            shareButton.tag = 1
        }
        else {
            shareButton.setImage(UIImage(systemName: "arrowshape.turn.up.forward"), for: .normal)
            shareButton.tag = 0
        }
//        shareButton.setImage(UIImage(systemName: "arrowshape.turn.up.forward.fill"), for: .normal)
    }
}
