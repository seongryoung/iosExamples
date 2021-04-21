//
//  TableViewController.swift
//  Examples
//
//  Created by 최성령 on 2021/04/21.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var numberListTableView: UITableView!
    @IBOutlet weak var tableDataTextField: UITextField!
    
    var tableViewData: [String] = ["1","2","3","4"]
    let titleCellnib = UINib(nibName: "TitleTableViewCell", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        numberListTableView.dataSource = self
        numberListTableView.delegate = self
        numberListTableView.register(titleCellnib, forCellReuseIdentifier: "TitleTableViewCell")

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

extension TableViewController {
    @IBAction func removelow(_ sender:Any){
        print("remove low")
        tableViewData.popLast()
        numberListTableView.reloadData()
    }
    
    @IBAction func addLow(_ sender:Any){
        if let addLoatTitle = tableDataTextField.text, addLoatTitle != ""{
            print("add low", addLoatTitle)
            tableViewData.append(addLoatTitle)
        }else{
            tableViewData.append(String(tableViewData.count) + " 번째 행 추가요")
        }
        numberListTableView.reloadData()
        
    }
    
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell", for: indexPath) as! TitleTableViewCell
        
        cell.cellTitle.text = tableViewData[indexPath.row]
        return cell
    }
    
}
