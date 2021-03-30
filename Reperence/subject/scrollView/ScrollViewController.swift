//
//  ScrollViewController.swift
//  Reperence
//
//  Created by finger3 on 2021/02/15.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var contentsScrollView: UIScrollView!
    @IBOutlet weak var headerHeightConstraints: NSLayoutConstraint!
    
    let minHeaderHeight: CGFloat = 100.0
    let maxHeaderHeight: CGFloat = 200.0
    
    override func viewDidLoad() {
        contentsScrollView.delegate = self
        
//        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
//        statusBar.backgroundColor = UIColor.red
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
//        if scrollView.contentOffset.y < maxHeaderHeight {
//            headerHeightConstraints.constant = max(abs(scrollView.contentOffset.y), maxHeaderHeight)
//        } else {
//            headerHeightConstraints.constant = minHeaderHeight
//        }
        let headerHeight:CGFloat = maxHeaderHeight - scrollView.contentOffset.y
        
        if ( minHeaderHeight > scrollView.contentOffset.y ){
            headerHeightConstraints.constant = headerHeight
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
