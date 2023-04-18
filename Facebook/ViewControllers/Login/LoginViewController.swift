//
//  ViewController.swift
//  Facebook
//
//  Created by Rahul on 27/02/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var emailAndPhoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var createNewAccount: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginHomeTabBarViewController: LoginHomeTabBarViewController = storyboard.instantiateViewController(withIdentifier: "LoginHomeTabBarViewController") as! LoginHomeTabBarViewController
        self.navigationController?.pushViewController(loginHomeTabBarViewController, animated: true)
    }
    
    
    @IBAction func forgotPasswordButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FindAccountViewController: FindAccountViewController = storyboard.instantiateViewController(withIdentifier: "FindAccountViewController") as! FindAccountViewController
        self.navigationController?.pushViewController(FindAccountViewController, animated: true)
    }
    
    
    
    @IBAction func createAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let JoinFacebookViewController: JoinFacebookViewController = storyboard.instantiateViewController(withIdentifier: "JoinFacebookViewController") as! JoinFacebookViewController
        self.navigationController?.pushViewController(JoinFacebookViewController, animated: true)
    }
}

