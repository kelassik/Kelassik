//
//  RegisterEmailViewController.swift
//  Kelassik
//
//  Created by yopa bagus on 17/04/22.
//

import UIKit

class RegisterEmailViewController: UIViewController {
    
    @IBOutlet var dropEmail: UIButton!
    @IBOutlet var dropRegEmail: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func btnChoice(){
        dropRegEmail.forEach{button in button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()}
    }
    
    @IBAction func dropEmailAction (_ sender: Any){
        btnChoice()
    }
    
    @IBAction func dropRegEmailAction (_ sender: UIButton){
        btnChoice()
        switch sender.currentTitle {
        case "Student":
            dropEmail.setTitle("Student", for: .normal)
        case "Teacher/Staff":
            dropEmail.setTitle("Teacher/Staff", for: .normal)
        case "Parent":
            dropEmail.setTitle("Parent", for: .normal)
        default:
            break
        }
    }

}
