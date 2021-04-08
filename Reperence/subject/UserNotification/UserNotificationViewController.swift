//
//  UserNotificationViewController.swift
//  Examples
//
//  Created by finger3 on 2021/04/08.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit
import UserNotifications

class UserNotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: .alert) { (didAllow, error) in
            print("is allow push permission : ", didAllow)
        }
        
        UNUserNotificationCenter.current().delegate = self
    }

    @IBAction func touchUpPushButton(_ sender: Any) {
        for index in 1...5 {
            
            //Setting content of the notification
            let content = UNMutableNotificationContent()
            content.title = "This is title : Zedd"
            content.subtitle = "This is Subtitle : UserNotifications tutorial"
            content.body = "This is Body : 블로그 글 쓰기"
            if #available(iOS 12.0, *){
                content.summaryArgument = "Alan Walker"
                content.summaryArgumentCount = 40
            }
            
            
            //Setting time for notification trigger
            //블로그 예제에서는 TimeIntervalNotificationTrigger을 사용했지만, UNCalendarNotificationTrigger사용법도 같이 올려놓을게요!
            
            //1. Use UNCalendarNotificationTrigger
            let date = Date(timeIntervalSinceNow: 70)
            var dateCompenents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
            
            let calendartrigger = UNCalendarNotificationTrigger(dateMatching: dateCompenents, repeats: true)
            
            
            //2. Use TimeIntervalNotificationTrigger
            let TimeIntervalTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 0.1, repeats: false)
            
            //Adding Request
            // MARK: - identifier가 다 달라야만 Notification Grouping이 됩니닷..!!
            let request = UNNotificationRequest(identifier: "\(index)timerdone", content: content, trigger: TimeIntervalTrigger)
            
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
            
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

extension UserNotificationViewController: UNUserNotificationCenterDelegate{
    //To display notifications when app is running  inforeground
    
    //앱이 foreground에 있을 때. 즉 앱안에 있어도 push알림을 받게 해줍니다.
    //viewDidLoad()에 UNUserNotificationCenter.current().delegate = self를 추가해주는 것을 잊지마세요.
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, openSettingsFor notification: UNNotification?) {
        let settingViewController = UIViewController()
        settingViewController.view.backgroundColor = .gray
        self.present(settingViewController, animated: true, completion: nil)
    }
}
