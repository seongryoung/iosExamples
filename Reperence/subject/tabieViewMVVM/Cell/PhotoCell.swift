//
//  PhotoCellTableViewCell.swift
//  Examples
//
//  Created by 최성령 on 2021/06/07.
//  Copyright © 2021 finger3. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {
    @IBOutlet weak var photoCellImage: UIImageView!
    @IBOutlet weak var photoCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
