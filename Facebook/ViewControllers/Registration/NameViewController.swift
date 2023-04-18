//
//  NameViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var AlreadyHaveAccount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DateOfBirthViewController: DateOfBirthViewController = storyboard.instantiateViewController(withIdentifier: "DateOfBirthViewController") as! DateOfBirthViewController
        self.navigationController?.pushViewController(DateOfBirthViewController, animated: true)
    }
    
    @IBAction func AlreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
