//
//  FormTeacherViewController.swift
//  Kelassik
//
//  Created by yopa bagus on 16/04/22.
//

import UIKit

class FormTeacherViewController: UIViewController {

    @IBOutlet weak var emailTeacher: UIView!
    @IBOutlet weak var phoneTeacher: UIView!
    @IBOutlet weak var segmentTeacher: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func segmentControllClick(_ sender: Any) {
                switch segmentTeacher.selectedSegmentIndex {
                case 0:
                    emailTeacher.alpha = 1
                    phoneTeacher.alpha = 0
                case 1 :
                    emailTeacher.alpha = 0
                    phoneTeacher.alpha = 1
                    
                default:
                    break
                }
        }

}
