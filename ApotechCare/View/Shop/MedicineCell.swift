//
//  MedicineCell.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 01/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit

class MedicineCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var medicineLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
