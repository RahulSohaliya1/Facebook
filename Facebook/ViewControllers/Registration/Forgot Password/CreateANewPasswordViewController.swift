//
//  CreateANewPasswordViewController.swift
//  Facebook
//
//  Created by Rahul on 07/03/23.
//

import UIKit

class CreateANewPasswordViewController: UIViewController {
    
    @IBOutlet weak var createNewPasswordLabel: UILabel!
    @IBOutlet weak var enterNewPasswordTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func continueButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginHomeTabBarViewController: LoginHomeTabBarViewController = storyboard.instantiateViewController(withIdentifier: "LoginHomeTabBarViewController") as! LoginHomeTabBarViewController
        self.navigationController?.pushViewController(LoginHomeTabBarViewController, animated: true)
    }
}
