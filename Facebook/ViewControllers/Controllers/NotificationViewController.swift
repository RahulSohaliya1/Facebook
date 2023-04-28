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
    
   
    
    var viewModel: NotificationTableViewCell = NotificationTableViewCell()
   
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCatagoryTableView()
        navigationController?.isNavigationBarHidden = true
        
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
return 1    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: NotificationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell") as! NotificationTableViewCell
        cell.arrNotifications[indexPath.row]
        cell.arrNotificationImage[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 16))
        return headerView
    }
}
