//
//  EmailAddressViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class EmailAddressViewController: UIViewController {
    
    @IBOutlet weak var emailAddressLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var signUpWithMobileNumberButton: UIButton!
    @IBOutlet weak var alreadyHaveAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let PasswordViewController: PasswordViewController = storyboard.instantiateViewController(withIdentifier: "PasswordViewController") as! PasswordViewController
        self.navigationController?.pushViewController(PasswordViewController, animated: true)
    }
    
    @IBAction func signUpWithMobileNumber(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let MobileNumberViewController: MobileNumberViewController = storyboard.instantiateViewController(withIdentifier: "MobileNumberViewController") as! MobileNumberViewController
        self.navigationController?.pushViewController(MobileNumberViewController, animated: true)
    }
    
    
    @IBAction func alreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
