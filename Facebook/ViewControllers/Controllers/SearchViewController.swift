//
//  SearchViewController.swift
//  Facebook
//
//  Created by Rahul on 17/03/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var searchBarController: searchBarController!
    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func backButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FriendsPageViewController: FriendsPageViewController = storyboard.instantiateViewController(withIdentifier: "FriendsPageViewController") as! FriendsPageViewController
//        self.navigationController?.pushViewController(FriendsPageViewController, animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}
