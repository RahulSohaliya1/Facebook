//
//  FriendsPageViewController.swift
//  Facebook
//
//  Created by Rahul on 11/03/23.
//

import UIKit

class FriendsPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var friendsLabel: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var requestsButton: UIButton!
    @IBOutlet weak var yourFriendsButton: UIButton!
    @IBOutlet weak var friendPageTableView: UITableView!
    
    // MARK: - Variables
    
    var arrOfNames: [String] = ["Jaydip Dhorajiya","Brijesh Gajera","Mahesh Vaghasiya","Kalpesh Sohaliya R","Ravi Dhanik","Rajesh Patel","Ghanshyam Hirpara","Kyada Milan","Nalin Ramani","Shailesh Rangani","Raxil Dudhat","Ketan Patel","Avkash Kotadiya","Jack Chauhan","Vraj Patel","Hiren Vaghasiya","Ayush Kakadiya","Ved Katrodiya","Kaushik Undhad","Devam Mangroliya","Parth Visavadiya","Bhargav Domadiya","Krish Dankhra","Avadh Gajera","Chandrakant Vaghela","Trupesh Thummar","Vash Gajipara","Dipesh Raval","Pintu Pansuriya","Ravi Dhakecha"]
    
    var arrOfProfilePic: [String] = ["f1","f2","f3","f4","f5","f6","f7","f8","f9","f10","f11","f12","f13","f14","f15","f16","f17","f18","f19","f20","f21","f22","f23","f24","f25","f26","f27","f28","f29","f30"]
    
    // MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        design()
        configureCatagoryTableView()
    }
    
    // MARK: - Initialization
    
    private func design() {
//        profileImageView.layer.cornerRadius = 19
//        profileImageView.layer.masksToBounds = true
//
//        addButton.layer.cornerRadius = 19
//        addButton.layer.masksToBounds = true
//
//        searchButton.layer.cornerRadius = 19
//        searchButton.layer.masksToBounds = true
//
//        messegeButton.layer.cornerRadius = 19
//        messegeButton.layer.masksToBounds = true
    }
    
    private func configureCatagoryTableView() {
//        let nibFile: UINib = UINib(nibName: "FriendsPageTableViewCell", bundle: nil)
//        friendsPageTabelView.register(nibFile, forCellReuseIdentifier: "cell")
        
        let nibFile: UINib = UINib(nibName: "FriendTableViewCell", bundle: nil)
        friendPageTableView.register(nibFile, forCellReuseIdentifier: "FriendTableViewCell")
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SearchViewController: SearchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        self.navigationController?.pushViewController(SearchViewController, animated: true)
    }
    
    @IBAction func requestsButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let RequestPageViewController: RequestPageViewController = storyboard.instantiateViewController(withIdentifier: "RequestPageViewController") as! RequestPageViewController
        self.navigationController?.pushViewController(RequestPageViewController, animated: true)
    }
    
    @IBAction func yourFriendsButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let YourFriendsViewController: YourFriendsViewController = storyboard.instantiateViewController(withIdentifier: "YourFriendsViewController") as! YourFriendsViewController
        self.navigationController?.pushViewController(YourFriendsViewController, animated: true)
    }
}

extension FriendsPageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfProfilePic.count
        return arrOfNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FriendPageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell", for: indexPath) as! FriendPageTableViewCell
        cell.profileImageView.image = UIImage(named: arrOfProfilePic[indexPath.row])
        cell.nameLabel.text = "\(arrOfNames[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 217
    }
}
