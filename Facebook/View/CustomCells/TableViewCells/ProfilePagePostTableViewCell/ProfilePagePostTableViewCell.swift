//
//  ProfilePagePostTableViewCell.swift
//  Facebook
//
//  Created by Rahul on 04/04/23.
//

import UIKit

class ProfilePagePostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profilePicImages: UIImageView!
    @IBOutlet weak var nameLabels: UILabel!
    @IBOutlet weak var titleLabels: UILabel!
    @IBOutlet weak var subtitleLabels: UILabel!
    @IBOutlet weak var postImageViews: UIImageView!
    @IBOutlet weak var likesLabels: UILabel!
    @IBOutlet weak var commentsLabels: UILabel!
    @IBOutlet weak var sharesLabels: UILabel!
    @IBOutlet weak var menuButtons: UIButton!
    @IBOutlet weak var closeLabels: UIButton!
    @IBOutlet weak var likeButtons: UIButton!
    @IBOutlet weak var commentsButtons: UIButton!
    @IBOutlet weak var shareButtons: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellDesign()
        
    }
    
    private func cellDesign() {
        profilePicImages.layer.cornerRadius = 32
        profilePicImages.layer.masksToBounds = true
        
        menuButtons.layer.cornerRadius = 19
        menuButtons.layer.masksToBounds = true
        
        closeLabels.layer.cornerRadius = 19
        closeLabels.layer.masksToBounds = true
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func menuButtonClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func closeButtonClicked(_ sender: UIButton) {
        
    }
    
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        if likeButtons.tag == 0 {
            likeButtons.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
            likeButtons.tag = 1
        }
        else {
            likeButtons.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            likeButtons.tag = 0
        }
    }
    
    @IBAction func commentsButtonClicked(_ sender: UIButton) {
        if commentsButtons.tag == 0 {
            commentsButtons.setImage(UIImage(systemName: "message.fill"), for: .normal)
            commentsButtons.tag = 1
        }
        else {
            commentsButtons.setImage(UIImage(systemName: "message"), for: .normal)
            commentsButtons.tag = 0
        }
        //        commentsButton.setImage(UIImage(systemName: "message.fill"), for: .normal)
    }
    
    @IBAction func sharesButtonClicked(_ sender: UIButton) {
        
        if shareButtons.tag == 0 {
            shareButtons.setImage(UIImage(systemName: "arrowshape.turn.up.forward.fill"), for: .normal)
            shareButtons.tag = 1
        }
        else {
            shareButtons.setImage(UIImage(systemName: "arrowshape.turn.up.forward"), for: .normal)
            shareButtons.tag = 0
        }
        //        shareButton.setImage(UIImage(systemName: "arrowshape.turn.up.forward.fill"), for: .normal)
    }
}


