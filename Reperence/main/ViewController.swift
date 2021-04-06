//
//  ViewController.swift
//  Reperence
//
//  Created by finger3 on 2021/01/14.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView?.delegate = self
        menuTableView?.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    let menuController = [String(describing: RedViewController.self), String(describing: StackViewController.self), String(describing: ScrollViewController.self), String(describing: LikeStackViewController.self), String(describing: CllocationViewController.self)]
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let titleWithImageCell = tableView.dequeueReusableCell(withIdentifier: "titleWithImageCell", for: indexPath) as! TitleWithImageCell
        titleWithImageCell.rightLabel.text = menuController[indexPath.row]
        return titleWithImageCell
//
//        return menuCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuController.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let redVc = RedViewController()
        let btnIdex: Int = indexPath.row
        switch btnIdex {
        case 0:
            self.navigationController?.pushViewController(RedViewController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(StackViewController(), animated: true)
        case 2:
            self.navigationController?.pushViewController(ScrollViewController(), animated: true)
        case 3:
            self.navigationController?.pushViewController(LikeStackViewController(), animated: true)
        case 4:
            self.navigationController?.pushViewController(CllocationViewController(), animated: true)
        default:
            let redVc = ScrollViewController()
            self.navigationController?.pushViewController(redVc, animated: true)
        }
        

    }
    

}

