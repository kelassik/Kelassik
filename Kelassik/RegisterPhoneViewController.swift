//
//  RegisterPhoneViewController.swift
//  Kelassik
//
//  Created by yopa bagus on 17/04/22.
//

import UIKit

class RegisterPhoneViewController: UIViewController {
    
    @IBOutlet var selectReg: UIButton!
    @IBOutlet var regAs: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func btnShow(){
        regAs.forEach{button in button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()}
    }
    
    @IBAction func selectRegAction (_ sender: Any){
        btnShow()
    }
    @IBAction func regAsAction (_ sender: UIButton){
        btnShow()
        switch sender.currentTitle {
        case "Student":
            selectReg.setTitle("Student", for: .normal)
        case "Teacher/Staff":
            selectReg.setTitle("Teacher/Staff", for: .normal)
        case "Parent":
            selectReg.setTitle("Parent", for: .normal)
        default:
            break
        }
    }

}
