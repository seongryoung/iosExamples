//
//  TableViewViewController.swift
//  Examples
//
//  Created by 최성령 on 2021/06/07.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit
import Alamofire

class TableViewViewController: UIViewController {
    var imageFromHttps:UIImage?
    
    
    @IBOutlet weak var photoTableView: UITableView! {
        didSet {
            photoTableView.register(PhotoCell.self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoTableView.delegate = self
        photoTableView.dataSource = self
        
        getImage()
        

        // Do any additional setup after loading the view.
    }
    
    func getImage() {
        AF.download("https://httpbin.org/image/png").responseURL { response in
            if response.error == nil, let imagePath = response.fileURL?.path {
                let image = UIImage(contentsOfFile: imagePath)
                self.imageFromHttps = image
                self.photoTableView.reloadData()
//                images.append(image)
            }
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

extension TableViewViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PhotoCell.self), for: indexPath) as? PhotoCell else {
            fatalError("Couldn't find UITableViewCell for \(String(describing: PhotoCell.self))")
        }
        cell.photoCellImage.image = self.imageFromHttps
        return cell
        
    }
}

extension UITableView {
    func register<T: UITableViewCell>(_ className: T.Type) {
        let cellName = String(describing: T.self)
        let nib = UINib(nibName: cellName, bundle: nil)
        register(nib, forCellReuseIdentifier: String(describing: cellName))
    }
}
