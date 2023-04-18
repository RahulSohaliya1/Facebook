//
//  RequestPageViewController.swift
//  Facebook
//
//  Created by Rahul on 20/03/23.
//

import UIKit

class RequestPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var requestLabel: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var seeFriendButtonSuggestion: UIButton!
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    // MARK: - Initialization
   
    @IBAction func backButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FriendsPageViewController: FriendsPageViewController = storyboard.instantiateViewController(withIdentifier: "FriendsPageViewController") as! FriendsPageViewController
//        self.navigationController?.pushViewController(FriendsPageViewController, animated: true)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func menuButtonClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func searchButtonClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func seeFriendSuggestionsButtonClicked(_ sender: UIButton) {
        
    }
}
