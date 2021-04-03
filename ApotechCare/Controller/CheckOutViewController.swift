//
//  CheckOutViewController.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 02/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit
import RealmSwift

class CheckOutViewController: UIViewController {
    
    let realm = try! Realm()
    
    var medicineObject: Results<MedicineObject>?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "CheckOutCell", bundle: nil), forCellReuseIdentifier: "checkOutIdentifier")
        tableView.rowHeight = 90
        
        loadData()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func loadData() {
        medicineObject = realm.objects(MedicineObject.self)
        
        tableView.reloadData()
    }

}

extension CheckOutViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicineObject?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkOutIdentifier", for: indexPath) as! CheckOutCell
        if let index = medicineObject?[indexPath.row] {
            cell.medicineLabel.text = index.medicine
            cell.itemCount.text = "\(index.count!) Pcs x \(index.medicinePrice!)"
            cell.priceLabel.text = index.totalPay
            
            let image = UIImage(named: "\(index.image!)")
            cell.medicineImageView.image = image
        }
        
        
        return cell
    
    }
    
    
    
}
