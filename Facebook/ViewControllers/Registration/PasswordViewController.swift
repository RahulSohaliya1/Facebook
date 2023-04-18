//
//  PasswordViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class PasswordViewController: UIViewController {
    
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var alreadyHaveAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SaveLoginInfoViewController: SaveLoginInfoViewController = storyboard.instantiateViewController(withIdentifier: "SaveLoginInfoViewController") as! SaveLoginInfoViewController
        self.navigationController?.pushViewController(SaveLoginInfoViewController, animated: true)
    }
    
    
    @IBAction func alreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
