//
//  MedicineObject.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 03/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import Foundation
import RealmSwift

class MedicineObject: Object {
    
    // Get nameMedicine, price, count data
    @objc dynamic var medicine: String?
    @objc dynamic var medicinePrice: String?
    @objc dynamic var count: String?
    @objc dynamic var totalPay: String?
    @objc dynamic var image: String?
    
}
