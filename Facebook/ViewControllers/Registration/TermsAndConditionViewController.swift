//
//  TermsAndConditionViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class TermsAndConditionViewController: UIViewController {
    
    @IBOutlet weak var termsLabel: UILabel!
    @IBOutlet weak var iAgreeButton: UIButton!
    @IBOutlet weak var alreadyHaveAccount: UIButton!
    
    // MARK: - Variables
   
    var randomNumber = Int.random(in: 100000...999999)
 
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func iAgreeButtonClicked(_ sender: UIButton) {

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
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ConfirmationCodeViewController: ConfirmationCodeViewController = storyboard.instantiateViewController(withIdentifier: "ConfirmationCodeViewController") as! ConfirmationCodeViewController
        self.navigationController?.pushViewController(ConfirmationCodeViewController, animated: true)
    }
    
    @IBAction func alreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
