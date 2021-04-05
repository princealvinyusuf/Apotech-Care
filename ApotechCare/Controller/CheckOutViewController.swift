//
//  CheckOutViewController.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 02/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit
import RealmSwift
import SwipeCellKit

class CheckOutViewController: UIViewController {
    
    
    let realm = try! Realm()
    
    var medicineObject: Results<MedicineObject>?
    
    var container = [String]()
    var formatedTotalPay: String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CheckOutCell", bundle: nil), forCellReuseIdentifier: "checkOutIdentifier")
        tableView.rowHeight = 90
        
        loadData()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        loadData()
    }
    
    
    
}





// MARK: - UITABLEVIEW

extension CheckOutViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicineObject!.count + 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkOutIdentifier", for: indexPath) as! CheckOutCell
        
        cell.delegate = self
        
        if indexPath.row < medicineObject!.count {
            let safeObject = medicineObject![indexPath.row].totalPay
            container.append(safeObject) // ["39,000", "165,000"]
            
            /// Convert array of string into array of float
            var force = [Float]()  // [39.0, 165.0]
            
            for item in container {
                force.append((item as NSString).floatValue)
            }
            
            /// Sum all item in array
            let total = force.reduce(0, +)
            let totalPay = total * 1000 // 204000.0
            
            /// Convert totalPay into .decimal places
            let numberToFormat = totalPay
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let formattedNumber = numberFormatter.string(from: NSNumber(value:numberToFormat))
            
            formatedTotalPay = formattedNumber!
            
            guard let index = medicineObject?[indexPath.row] else { return UITableViewCell() }
            let image = UIImage(named: "\(index.image)")
            
            cell.medicineLabel.text = index.medicine
            cell.itemCount.text = "\(index.count) Pcs x \(index.medicinePrice)"
            cell.priceLabel.text = index.totalPay
            cell.medicineImageView.image = image
            cell.totalLabel.text = "Price: "
            
            
        } else {
            cell.priceLabel.text = formatedTotalPay
            cell.totalLabel.text = "Total: "
            cell.medicineLabel.isHidden = true
            cell.medicineImageView.isHidden = true
            cell.itemCount.isHidden = true
            
        }
        
        
        return cell
        
    }
    
    // MARK: - DATA MANIPULATION
    
    func loadData() {
        container = [String]()
        
        medicineObject = realm.objects(MedicineObject.self)
        
        
        tableView.reloadData()
    }
    
    func deleteData(at index: IndexPath) {
        if let items = medicineObject?[index.row] {
            do {
                try realm.write {
                    realm.delete(items)
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}


// MARK: - SWIPE TABLE VIEW
extension CheckOutViewController: SwipeTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }

        if indexPath.row < medicineObject!.count {
            let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
                self.deleteData(at: indexPath)
            }

            // customize the action appearance
            deleteAction.image = UIImage(named: "delete")
            return [deleteAction]
        }
        
        
        loadData()
        tableView.reloadData()
        

        return nil
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
            var options = SwipeOptions()
            options.expansionStyle = .destructive
            return options
        }
    
}
