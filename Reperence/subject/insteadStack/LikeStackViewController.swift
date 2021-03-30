//
//  LikeStackViewController.swift
//  Reperence
//
//  Created by finger3 on 2021/03/15.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class LikeStackViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var sView1: UIView!
    @IBOutlet weak var sView2: UIView!
    @IBOutlet weak var sView3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func view1Hide(_ sender: Any) {
        self.view1.isHidden = true
    }
    
    @IBAction func view2Hide(_ sender: Any) {
        self.view2.isHidden = true
    }
    
    @IBAction func view3Hide(_ sender: Any) {
        self.view3.isHidden = true
    }
    
    @IBAction func sView1Hide(_ sender: Any) {
        self.sView1.isHidden = true
    }
    
    @IBAction func sView2Hide(_ sender: Any) {
        self.sView2.isHidden = true
    }
    
    @IBAction func sView3Hide(_ sender: Any) {
        self.sView3.isHidden = true
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
