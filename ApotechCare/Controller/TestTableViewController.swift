//
//  TestTableViewController.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 04/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit
import RealmSwift

class TestTableViewController: UITableViewController {
    
    let realm = try! Realm()
    
    var result: Results<MedicineObject>?

    override func viewDidLoad() {
        super.viewDidLoad()

       load()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return result!.count + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testIdentifier", for: indexPath)
        
       
        if indexPath.row < result!.count {
            cell.textLabel?.text = result?[indexPath.row].medicine
        } else {
            cell.textLabel?.text = "Extra Row"
        }
        
        
        
        return cell
    }
    
    func load() {
        result = realm.objects(MedicineObject.self)
        
        tableView.reloadData()
    }

}
