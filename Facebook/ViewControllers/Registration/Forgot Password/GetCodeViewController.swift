//
//  GetCodeViewController.swift
//  Facebook
//
//  Created by Rahul on 07/03/23.
//

import UIKit

class GetCodeViewController: UIViewController {
    
    @IBOutlet weak var findYourAccountLabel: UILabel!
    @IBOutlet weak var enterCodeTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var sendCodeAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func continueButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let CreateANewPasswordViewController: CreateANewPasswordViewController = storyboard.instantiateViewController(withIdentifier: "CreateANewPasswordViewController") as! CreateANewPasswordViewController
        self.navigationController?.pushViewController(CreateANewPasswordViewController, animated: true)
    }
    
    @IBAction func sendCodeAgainButtonClicked(_ sender: UIButton) {
        
    }
}
