//
//  GenderViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class GenderViewController: UIViewController {
    
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var alreadyHaveAccount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func maleButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let MobileNumberViewController: MobileNumberViewController = storyboard.instantiateViewController(withIdentifier: "MobileNumberViewController") as! MobileNumberViewController
        self.navigationController?.pushViewController(MobileNumberViewController, animated: true)
    }
    
    @IBAction func femaleButtonClicked(_ sender: UIButton) {
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
