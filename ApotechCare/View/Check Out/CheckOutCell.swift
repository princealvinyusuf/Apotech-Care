//
//  CheckOutCell.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 02/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit

class CheckOutCell: UITableViewCell {

    @IBOutlet weak var medicineImageView: UIImageView!
    @IBOutlet weak var medicineLabel: UILabel!
    @IBOutlet weak var itemCount: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        medicineImageView.layer.cornerRadius = (medicineImageView?.frame.size.width ?? 0.0) / 2
        medicineImageView.layer.masksToBounds = true
        medicineImageView.layer.borderWidth = 3.0
        medicineImageView.layer.borderColor = UIColor.white.cgColor
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
}
