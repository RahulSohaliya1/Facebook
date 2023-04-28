//
//  NotificationTableViewCell.swift
//  Facebook
//
//  Created by Rahul on 15/04/23.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var notificationCollectionView: UICollectionView!
    
    var arrNotificationImage: [String] = ["r1","r2","r3","r4","r5","r6","r7","r8"]
    
    var arrNotifications: [String] = ["You have a new friend suggestion: Vadi Prince","Ujas Anghan accepted your friend request","sujan bhayani accepted your friend request","You have a new friend suggestion: Rakshil Dudhat","Kaushik Savaliya accepted your friend request","Akshay sojitra accepted your friend request","Bhargav Domadiya accepted your friend request","Jonathan Deff accepted your friend request"]
    
    var notificationView: NotificationsCollectionViewCell = NotificationsCollectionViewCell()

    override func awakeFromNib() {
        super.awakeFromNib()
        configureCatagoryCollectionView()
    }
    
    private func configureCatagoryCollectionView() {
        
        
        let nibFile: UINib = UINib(nibName: "NotificationsCollectionViewCell", bundle: nil)
        notificationCollectionView.register(nibFile, forCellWithReuseIdentifier: "NotificationsCollectionViewCell")
        notificationCollectionView.dataSource = self
        notificationCollectionView.delegate = self
        notificationCollectionView.reloadData()
    }
}

// MARK: - Collection FlowLayout Method

extension NotificationTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: 0.0, bottom: 8.0, right: 8.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}

extension NotificationTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNotifications.count
        return arrNotificationImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: NotificationsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NotificationsCollectionViewCell", for: indexPath) as! NotificationsCollectionViewCell
        cell.notficationLabel.text = "\(arrNotifications[indexPath.row])"
        cell.notificationImageView.image = UIImage(named: arrNotificationImage[indexPath.row])
        return cell
    }
    
}


