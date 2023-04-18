//
//  mobileNumberViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class MobileNumberViewController: UIViewController {
    
    @IBOutlet weak var mobileNumberLabel: UILabel!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var signUpWithEmailAddressButton: UIButton!
    @IBOutlet weak var alreadyHaveAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let PasswordViewController: PasswordViewController = storyboard.instantiateViewController(withIdentifier: "PasswordViewController") as! PasswordViewController
        self.navigationController?.pushViewController(PasswordViewController, animated: true)
    }
    
    
    @IBAction func signUpAndEmailAddressButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let EmailAddressViewController: EmailAddressViewController = storyboard.instantiateViewController(withIdentifier: "EmailAddressViewController") as! EmailAddressViewController
        self.navigationController?.pushViewController(EmailAddressViewController, animated: true)
    }
    
    
    @IBAction func alreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
