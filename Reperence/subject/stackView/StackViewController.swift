//
//  StackViewController.swift
//  Reperence
//
//  Created by finger3 on 2021/02/08.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var DisplayStackView: UIStackView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var grayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func touchUpInside(_ sender: UIButton) {
        switch sender.tag {
        case 101:
            blueView.isHidden = true
            print("101")
            
        default:
            print("101")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
