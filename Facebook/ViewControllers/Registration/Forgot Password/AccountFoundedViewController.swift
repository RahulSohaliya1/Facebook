//
//  AccountFoundedViewController.swift
//  Facebook
//
//  Created by Rahul on 07/03/23.
//

import UIKit

class AccountFoundedViewController: UIViewController {
    
    @IBOutlet weak var accountImage: UIImageView!
    @IBOutlet weak var getCodeViaSMS: UILabel!
    @IBOutlet weak var getCodeViaEmail: UILabel!
    @IBOutlet weak var enterPasswordToLogin: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func continueButtonClicked(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let GetCodeViewController: GetCodeViewController = storyboard.instantiateViewController(withIdentifier: "GetCodeViewController") as! GetCodeViewController
        self.navigationController?.pushViewController(GetCodeViewController, animated: true)
    }
}
