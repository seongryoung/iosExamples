//
//  ChildController.swift
//  Examples
//
//  Created by 최성령 on 2021/05/05.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class ChildController: MatherViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("ChildController 의 뷰 디드로드.")
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        matherPrnt(text: "call mather function")
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
