//
//  TestNaviRootViewController.swift
//  Examples
//
//  Created by 최성령 on 2021/04/27.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class TestNaviRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("test Navi Root viewController didload")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("testnavi root did appear")
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
