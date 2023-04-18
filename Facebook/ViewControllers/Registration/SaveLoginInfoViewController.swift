//
//  SaveLoginInfoViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class SaveLoginInfoViewController: UIViewController {
    
    @IBOutlet weak var loginInfoLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var notNowButton: UIButton!
    @IBOutlet weak var alreadyHaveAccount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TermsAndConditionViewController: TermsAndConditionViewController = storyboard.instantiateViewController(withIdentifier: "TermsAndConditionViewController") as! TermsAndConditionViewController
        self.navigationController?.pushViewController(TermsAndConditionViewController, animated: true)
    }
    
    @IBAction func notNowButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let TermsAndConditionViewController: TermsAndConditionViewController = storyboard.instantiateViewController(withIdentifier: "TermsAndConditionViewController") as! TermsAndConditionViewController
        self.navigationController?.pushViewController(TermsAndConditionViewController, animated: true)
    }
    
    
    @IBAction func alreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
