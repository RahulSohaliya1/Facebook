//
//  ConfirmationCodeViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.


import UIKit
import UserNotifications

class ConfirmationCodeViewController: UIViewController {
    
    @IBOutlet weak var confirmationLabel: UILabel!
    @IBOutlet weak var confirmationTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var iDidntRecieveCodeButton: UIButton!
    
    var randomNumber = Int.random(in: 100000...999999)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func displayAlert(message: String) {
                let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                let okButton: UIAlertAction = UIAlertAction(title: "Okay", style: .default)
                let cancelButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .destructive)
                alert.addAction(okButton)
                alert.addAction(cancelButton)
                present(alert, animated: true)
            }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginHomeTabBarViewController: LoginHomeTabBarViewController = storyboard.instantiateViewController(withIdentifier: "LoginHomeTabBarViewController") as! LoginHomeTabBarViewController
        self.navigationController?.pushViewController(LoginHomeTabBarViewController, animated: true)
    }
    
    
    @IBAction func iDidntReceiveCodeButtonClicked(_ sender: UIButton) {
        
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.requestAuthorization(options: [.alert, .sound]) { allowed, error in
            if allowed {
                print("Premission Granted")
            } else {
                print("Premission UnGranted")
            }
        }
        let content = UNMutableNotificationContent()
        content.title = "Facebook"
        content.body = "Your OTP \(String(randomNumber))"
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "Notification", content: content, trigger: trigger)
        notificationCenter.add(request) { (error) in
            print("Error \(error?.localizedDescription ?? "")")
        }
    }
}
