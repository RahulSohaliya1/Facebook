//
//  FriendTableViewCell.swift
//  Facebook
//
//  Created by Rahul on 13/03/23.
//

import UIKit

class FriendPageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addFriendButton: UIButton!
    @IBOutlet weak var removeButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    @IBAction func addFriendButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func removeButtonTapped(_ sender: UIButton) {
        
    }
}
