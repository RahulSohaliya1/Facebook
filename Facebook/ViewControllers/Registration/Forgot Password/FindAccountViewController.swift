//
//  FindAccountViewController.swift
//  Facebook
//
//  Created by Rahul on 07/03/23.
//

import UIKit

class FindAccountViewController: UIViewController {
    
    
    @IBOutlet weak var findAccountLabel: UILabel!
    @IBOutlet weak var mobileNumberAndEmailAddressTextField: UITextField!
    @IBOutlet weak var findAccountButton: UIButton!
 
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func findAccountButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let AccountFoundedViewController: AccountFoundedViewController = storyboard.instantiateViewController(withIdentifier: "AccountFoundedViewController") as! AccountFoundedViewController
        self.navigationController?.pushViewController(AccountFoundedViewController, animated: true)
    }
}
