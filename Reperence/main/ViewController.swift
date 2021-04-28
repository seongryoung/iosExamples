//
//  ViewController.swift
//  Reperence
//
//  Created by finger3 on 2021/01/14.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView?.delegate = self
        menuTableView?.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    let menuController = [String(describing: RedViewController.self),
                          String(describing: StackViewController.self),
                          String(describing: ScrollViewController.self),
                          String(describing: LikeStackViewController.self),
                          String(describing: CllocationViewController.self),
                          String(describing: UserNotificationViewController.self),
                          String(describing: LottieTestViewController.self),
                          String(describing: TableViewController.self),
                          "uinavigationCotroller"
    ]
    
    
    
    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
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
        case 5:
            self.navigationController?.pushViewController(UserNotificationViewController(), animated: true)
        case 6:
            self.navigationController?.pushViewController(LottieTestViewController(), animated: true)
        case 7:
            self.navigationController?.pushViewController(TableViewController(), animated: true)
        case 8:
            //삽질1
//            self.navigationController?.pushViewController(UiNavigationControllerTest(), animated: true)
            //uinavigation controller 는 푸시 불가능 prsent 로 해야함...
            //노노 push 도 가능 네비게이션 루트 뷰로 푸시 하면 가능함.
            
            //삽질2 스토리보드 제대로 연결이 안됨.
//            self.present(UiNavigationControllerTest(), animated: true) {
//                print("navigation controller present complete")
//            }
            
            //삽질3 하늘이가 알려준대로 해봣지만 역시 안됨... ㅡㅡ
//            let testNavi = UINavigationController(rootViewController: TestNaviRootViewController())
//            let testNaviRootVC = testNavi.viewControllers.first
//            testNaviRootVC?.view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//            self.view.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
//            self.present(testNavi, animated: true) {
//                print("navigation controller present complete")
//            }
            
            //해결..
            let storyboard:UIStoryboard = UIStoryboard(name: "UiNavigationControllerTest", bundle: nil)
            let naviRootVC = storyboard.instantiateViewController(withIdentifier: "testNaviRootVC")
            self.navigationController?.pushViewController(naviRootVC, animated: true)
        default:
            let redVc = ScrollViewController()
            self.navigationController?.pushViewController(redVc, animated: true)
        }
        

    }
}

