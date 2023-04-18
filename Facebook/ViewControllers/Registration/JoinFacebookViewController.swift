//
//  JoinFacebookViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class JoinFacebookViewController: UIViewController {
    
    @IBOutlet weak var JoinFacebookLabel: UILabel!
    @IBOutlet weak var registrationImage: UIImageView!
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var AlreadyHaveAccountButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func getStartedButtonClicked(_ sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let NameViewController: NameViewController = storyboard.instantiateViewController(withIdentifier: "NameViewController") as! NameViewController
        self.navigationController?.pushViewController(NameViewController, animated: true)
    }
    
    @IBAction func AlreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
