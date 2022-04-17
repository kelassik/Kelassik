//
//  LoginViewController.swift
//  Kelassik
//
//  Created by yopa bagus on 14/04/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var btnSelectForm: UIButton!
    @IBOutlet var btnForm: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func btnShowVisibility(){
        btnForm.forEach{button in button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()}
    }
    
    @IBAction func btnSelectFormAction(_ sender: Any) {
        btnShowVisibility()
    }
    
    @IBAction func btnFormAction(_ sender: UIButton) {
        btnShowVisibility()
    }
}
