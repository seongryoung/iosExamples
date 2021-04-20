//
//  LottieTestViewController.swift
//  Examples
//
//  Created by 최성령 on 2021/04/21.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit
import Lottie

class LottieTestViewController: UIViewController {
    @IBOutlet weak var lottieView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let animationView = AnimationView(name: "goTrashCan")
        lottieView.addSubview(animationView)
        animationView.frame = lottieView.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        
        //메인 수정
        animationView.play { isComplete in
            print("animation Complete", isComplete)
        }
        // Do any additional setup after loading the view.
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
