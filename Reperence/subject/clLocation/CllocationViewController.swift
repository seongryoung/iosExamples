//
//  CllocationViewController.swift
//  Examples
//
//  Created by finger3 on 2021/04/06.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit
import CoreLocation

class CllocationViewController: UIViewController, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    
        
//        let cllocationStatus = CLLocationManager.authorizationStatus()
//
//        if(cllocationStatus != CLAuthorizationStatus.denied){
//            let alertController = UIAlertController(title: "지도권한", message: "수락해줘", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "네", style: .default, handler: { Void in
//                print("수락함")
//            }))
//            alertController.addAction(UIAlertAction(title: "아니오", style: .default, handler: { Void in
//                print("거절")
//            }))
//
//            self.present(alertController, animated: true) {
//
//            }
//
//        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Do any additional setup after loading the view.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let locationManager:CLLocationManager = appDelegate.locationManager
        //locationManager 변수를 다시 초기화 하면 app delegate 가 아니라 arc 한테 회수 당함.
//        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coor = manager.location?.coordinate{
            print(coor.longitude, coor.latitude)
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
