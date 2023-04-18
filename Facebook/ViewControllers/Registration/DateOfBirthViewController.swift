//
//  DateOfBirthViewController.swift
//  Facebook
//
//  Created by Rahul on 06/03/23.
//

import UIKit

class DateOfBirthViewController: UIViewController {
    
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var alreadyHaveAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let GenderViewController: GenderViewController = storyboard.instantiateViewController(withIdentifier: "GenderViewController") as! GenderViewController
        self.navigationController?.pushViewController(GenderViewController, animated: true)
    }
    
    
    @IBAction func alreadyHaveAnAccountButtonClicked(_ sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController: LoginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginViewController, animated: true)
    }
}
