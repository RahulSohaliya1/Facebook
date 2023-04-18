//
//  ProfileViewController.swift
//  Facebook
//
//  Created by Rahul on 21/03/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var ProfilePostTableView: UITableView!
    
    // MARK: - Variables
    
    var arrProfilePic: [String] = ["dp1","dp2","dp3","dp4","dp5"]
    var arrPostsPic: [String] = ["post1","post2","post3","post4","post5"]
    var arrOfNames: [String] = ["Happy Garden","Pallet Wood Projects","Battle Machines","સુવિચારો ની સુવાસ","Tiny House 2"]
    var arrOfTitle: [String] = ["Suggested for you - 3 d - 🌍","Suggested for you - 54 m - 🌍","Suggested for you - 1 h - 🌍","Suggested for you - 72 m - 🌍","Suggested for you - 7 h - 🌍"]
    var arrOfSubtitle: [String] = ["It’s an umbrella tree","Wooden lovely House","Credits: Dirk Bruin #Epsilon","Motivational Sparks","Tiny Housing Builds"]
    var arrOfLikes: [String] = ["52.1K","9K","12.5K","67.2K","78.1K"]
    var arrOfComments: [String] = ["2K Comments","1.5K Comments","3.4K Comments","12.4K Comments","87.1K Comments"]
    var arrOfShares: [String] = ["6.5K Shares","9.1K Shares","12.2K Shares","97.9K Shares","102.2K Shares"]
    
    
    
    
    
    // MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        configuretableView()
    }
    
    private func configuretableView() {
        let nibFile: UINib = UINib(nibName: "ProfilePagePostTableViewCell", bundle: nil)
        ProfilePostTableView.register(nibFile, forCellReuseIdentifier: "ProfilePagePostTableViewCell")
        ProfilePostTableView.delegate = self
        ProfilePostTableView.dataSource = self
    }
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProfilePic.count
        return arrPostsPic.count
        return arrOfNames.count
        return arrOfTitle.count
        return arrOfSubtitle.count
        return arrOfLikes.count
        return arrOfComments.count
        return arrOfShares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProfilePagePostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ProfilePagePostTableViewCell", for: indexPath) as! ProfilePagePostTableViewCell
        cell.profilePicImages.image = UIImage(named: arrProfilePic[indexPath.row])
        cell.nameLabels.text = "\(arrOfNames[indexPath.row])"
        cell.postImageViews.image = UIImage(named: arrPostsPic[indexPath.row])
        cell.titleLabels.text = "\(arrOfTitle[indexPath.row])"
        cell.subtitleLabels.text = "\(arrOfSubtitle[indexPath.row])"
        cell.likesLabels.text = "\(arrOfLikes[indexPath.row])"
        cell.commentsLabels.text = "\(arrOfComments[indexPath.row])"
        cell.sharesLabels.text = "\(arrOfShares[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 428
    }
}


