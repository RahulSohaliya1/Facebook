//
//  NotificationViewController.swift
//  Facebook
//
//  Created by Rahul on 21/03/23.
//

import UIKit
import WebKit

class NotificationViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var notificationTableView: UITableView!
    
    @IBOutlet weak var backButton: UIButton!
    
    var arrNotificationImage: [String] = ["r1","r2","r3","r4","r5","r6","r7","r8"]
    
    var arrNotifications: [String] = ["You have a new friend suggestion: Vadi Prince","Ujas Anghan accepted your friend request","sujan bhayani accepted your friend request","You have a new friend suggestion: Rakshil Dudhat","Kaushik Savaliya accepted your friend request","Akshay sojitra accepted your friend request","Bhargav Domadiya accepted your friend request","Jonathan Deff accepted your friend request"]
    
   
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCatagoryTableView()
//        loadWebView()
        
//        if tabBarController?.tabBar.tag == 0 {
//            self.tabBarController?.tabBar.isHidden = true
//
//            tabBarController?.tabBar.tag = 1
//        }
//        else {
//            self.tabBarController?.tabBar.isHidden = true
//
//
//            tabBarController?.tabBar.tag = 0
//
//        }
//        self.tabBarController?.tabBar.isHidden = true
    }
    
    
    private func configureCatagoryTableView() {
        //        let nibFile: UINib = UINib(nibName: "FriendsPageTableViewCell", bundle: nil)
        //        friendsPageTabelView.register(nibFile, forCellReuseIdentifier: "cell")
        
        let nibFile: UINib = UINib(nibName: "NotificationTableViewCell", bundle: nil)
        notificationTableView.register(nibFile, forCellReuseIdentifier: "NotificationTableViewCell")
    }
    
    // MARK: - Initialization
    
//    private func loadWebView() {
//        let url = URL(string: "https://www.facebook.com/notifications")!
//        let requestURL = URLRequest(url: url)
//        webViewController.load(requestURL)
//    }
    

    @IBAction func backButtonTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let HomeViewController: HomeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(HomeViewController, animated: true)
    }
}

extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNotifications.count
        return arrNotificationImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: NotificationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell") as! NotificationTableViewCell
        cell.arrNotifications.count
        cell.arrNotificationImage.count
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 16))
        return headerView
    }
}
