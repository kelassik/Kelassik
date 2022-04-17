//
//  FormStudentViewController.swift
//  Kelassik
//
//  Created by yopa bagus on 14/04/22.
//

import UIKit

class FormStudentViewController: UIViewController {
    
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var segmentLogin: UISegmentedControl!
    @IBOutlet weak var phoneView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.isHidden = false
        phoneView.isHidden = true
    }
    
    @IBAction func segmentControllClick(_ sender: Any) {
                switch segmentLogin.selectedSegmentIndex {
                case 0:
                    emailView.isHidden = false
                    phoneView.isHidden = true
                case 1 :
                    emailView.isHidden = true
                    phoneView.isHidden = false
                
                default:
                    break
                }
        }
}

