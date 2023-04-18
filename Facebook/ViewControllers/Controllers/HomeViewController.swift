//
//  HomeViewController.swift
//  Facebook
//
//  Created by Rahul on 07/03/23.
//


//self.navigationController?.isToolbarHidden = false
//
//let addButtonAction = UIAction(title: "") { (_) in
//    print("addButtonAction")
//
//    let destructiveAction = UIAction(title: "Destructive", attributes: .destructive) { (_) in
//        print("Destructive")
//    }
//
//    let menu = UIMenu(title: "", children: [
//        UIAction(title: "Post", image: UIImage(systemName: ""),handler: {(_) in }),
//        UIAction(title: "Story", image: UIImage(systemName: ""),handler: {(_) in }),
//        UIAction(title: "Reel", image: UIImage(systemName: ""),handler: {(_) in }),
//        destructiveAction
//
//    ])
//
//    self.toolbarItems = [
//        UIBarButtonItem(title: nil, image: UIImage(systemName: ""),primaryAction: addButtonAction, menu: nil),
//        UIBarButtonItem(systemItem: .add, primaryAction: addButtonAction, menu: nil),.flexibleSpace(),
//        UIBarButtonItem(image: UIImage(systemName: ""), menu: menu)
//
//    ]
//
//    self.addButton.menu = menu
//    self.addButton.showsMenuAsPrimaryAction = true

//}


import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet private weak var addButton: UIButton!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var messegeButton: UIButton!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var storyCollectionView: UICollectionView!
    
    @IBOutlet weak var reelsCollectionView: UICollectionView!
    
    @IBOutlet weak var addFriendCollectionView: UICollectionView!
    
    @IBOutlet weak var postTableView: UITableView!
    
    @IBOutlet weak var postProfile1ImageView: UIImageView!
    
    @IBOutlet weak var postProfile2ImageView: UIImageView!
    
    // MARK: - Variables
    
    var arrStoriesImages: [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var arrReelsImages: [String] = ["r1","r2","r3","r4","r5","r6","r7","r8"]
    var arrAddFriendImages: [String] = ["p1","p2","p3","p4","p5","p6","p7","p8"]
    var arrAddFriendNames: [String] = ["Jaydeep Sohaliya","Rakesh Patel","Raju Rakholiya","Hardik Patel","Divyesh Dhaduk","Akshay Patel","Alimento Foods","Nikhil Patel"]
    
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
        self.tabBarController?.tabBar.isHidden = false
        
//        self.navigationController?.isToolbarHidden = false
        
//        let addButtonAction = UIAction(title: "") { (_) in
//            print("addButtonAction")
//        }
//            let destructiveAction = UIAction(title: "Destructive", attributes: .destructive) { (_) in
//                print("Destructive")
//            }
//
//            let menu = UIMenu(title: "", children: [
//                UIAction(title: "Post", image: UIImage(systemName: ""),handler: { (_) in }),
//                UIAction(title: "Story", image: UIImage(systemName: ""),handler: { (_) in }),
//                UIAction(title: "Reel", image: UIImage(systemName: ""),handler: { (_) in }),
//                destructiveAction
//
//            ])
//
//            self.toolbarItems = [
//                UIBarButtonItem(title: nil, image: UIImage(systemName: ""),primaryAction: addButtonAction, menu: nil),
//                UIBarButtonItem(systemItem: .add, primaryAction: addButtonAction, menu: nil),.flexibleSpace(),
//                UIBarButtonItem(image: UIImage(systemName: ""), menu: menu)
//
//            ]
//
//            self.addButton.menu = menu
//            self.addButton.showsMenuAsPrimaryAction = true
//
//        }
 
            configureCatagoryCollectionView()
            design()
        }
    
    @IBAction func messegeButtonClicked(_ sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let MessengerViewController: MessengerViewController = storyboard.instantiateViewController(withIdentifier: "MessengerViewController") as! MessengerViewController
        self.navigationController?.pushViewController(MessengerViewController, animated: true)
    }
    
    // MARK: - Initialization
    
        private func design() {
            profileImageView.layer.cornerRadius = 20
            profileImageView.layer.masksToBounds = true
            
            addButton.layer.cornerRadius = 19
            addButton.layer.masksToBounds = true
            
            searchButton.layer.cornerRadius = 19
            searchButton.layer.masksToBounds = true
            
            messegeButton.layer.cornerRadius = 19
            messegeButton.layer.masksToBounds = true
            
            postProfile1ImageView.layer.cornerRadius = 32
            postProfile1ImageView.layer.masksToBounds = true
            
            postProfile2ImageView.layer.cornerRadius = 32
            postProfile2ImageView.layer.masksToBounds = true
        }
    
    // MARK: - Get Home Page Details
    
        private func configureCatagoryCollectionView() {
            let nibFile: UINib = UINib(nibName: "StoryCollectionViewCell", bundle: nil)
            storyCollectionView.register(nibFile, forCellWithReuseIdentifier: "StoryCollectionViewCell")
            
            let nibFile2: UINib = UINib(nibName: "ReelsCollectionViewCell", bundle: nil)
            reelsCollectionView.register(nibFile2, forCellWithReuseIdentifier: "ReelsCollectionViewCell")
            reelsCollectionView.delegate = self
            reelsCollectionView.dataSource = self
            
            let nibFile3: UINib = UINib(nibName: "AddFriendsCollectionViewCell", bundle: nil)
            addFriendCollectionView.register(nibFile3, forCellWithReuseIdentifier: "AddFriendsCollectionViewCell")
            addFriendCollectionView.delegate = self
            addFriendCollectionView.dataSource = self
            
            let nibFile4: UINib = UINib(nibName: "MainPagePostTableViewCell", bundle: nil)
            postTableView.register(nibFile4, forCellReuseIdentifier: "MainPagePostTableViewCell")
            postTableView.delegate = self
            postTableView.dataSource = self
        }
    }
    
    extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if collectionView == self.storyCollectionView {
                return arrStoriesImages.count
            } else if collectionView == self.reelsCollectionView {
                return arrReelsImages.count
            } else {
                return arrAddFriendImages.count
            }
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if collectionView == self.storyCollectionView {
                let cell: StoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
                cell.storyImageView.image = UIImage(named: arrStoriesImages[indexPath.row])
                return cell
            } else if collectionView == self.reelsCollectionView {
                let cell: ReelsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReelsCollectionViewCell", for: indexPath) as! ReelsCollectionViewCell
                cell.reelsImageView.image = UIImage(named: arrReelsImages[indexPath.row])
                return cell
            } else {
                let cell: AddFriendsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "AddFriendsCollectionViewCell", for: indexPath) as! AddFriendsCollectionViewCell
                cell.addFriendImageView.image = UIImage(named: arrAddFriendImages[indexPath.row])
                cell.nameLabel.text = "\(arrAddFriendNames[indexPath.row])"
                return cell
            }
        }
    }
    
    
    extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
        
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
            let cell: MainPagePostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MainPagePostTableViewCell", for: indexPath) as! MainPagePostTableViewCell
            cell.profilePicImage.image = UIImage(named: arrProfilePic[indexPath.row])
            cell.nameLabel.text = "\(arrOfNames[indexPath.row])"
            cell.postImageView.image = UIImage(named: arrPostsPic[indexPath.row])
            cell.titleLabel.text = "\(arrOfTitle[indexPath.row])"
            cell.subtitleLabel.text = "\(arrOfSubtitle[indexPath.row])"
            cell.likesLabel.text = "\(arrOfLikes[indexPath.row])"
            cell.commentsLabel.text = "\(arrOfComments[indexPath.row])"
            cell.sharesLabel.text = "\(arrOfShares[indexPath.row])"
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 428
        }
    }
    
