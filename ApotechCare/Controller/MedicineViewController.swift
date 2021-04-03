//
//  MedicineViewController.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 02/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit
import RealmSwift


class MedicineViewController: UIViewController {
    
    // Database Property
    let realm = try! Realm()
    
    
    // Variable
    var imageString: String?
    var medicineImageViewData: UIImage!
    var apotechLabelData: String?
    var medicineSummaryData: String?
    var priceLabelData: String?
    var medicineDescriptionData: String?
    let price: [String] = [
        "5.000", "10.000", "15.000",
    ]
    
    let place: [String] = [
        "Batu Aji", "Tj. Piayu", "Batam Centre",
    ]
    
    var selectedPrice: String?
    
    @IBOutlet weak var countLabel: UILabel!
    var countValue: Int = 0
    

    // UI Component
    @IBOutlet weak var medicineImageView: UIImageView!
    @IBOutlet weak var apotechLabel: UILabel!
    @IBOutlet weak var medicineSummary: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var pricePicker: UITextField!
    @IBOutlet weak var medicineDescription: UITextView!
    let pickerView = UIPickerView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pricePicker.inputView = pickerView
        
        medicineImageView.image = medicineImageViewData
        apotechLabel.text = apotechLabelData
        medicineSummary.text = medicineSummaryData
        priceLabel.text = "Rp. \(priceLabelData!)"
        medicineDescription.text = medicineDescriptionData
        
        countLabel.text = "Count: \(countValue)"
        
        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
        
        
        dismissPickerView()
        
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
        
    }
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let flexButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let button = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.action))
        toolBar.setItems([flexButton, button], animated: true)
        toolBar.isUserInteractionEnabled = true
        pricePicker.inputAccessoryView = toolBar
    }
    
    @objc func action() {
        view.endEditing(true)
    }
    
    
}

extension MedicineViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return price.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return place[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPrice = price[row]
        pricePicker.text = "Rp. \(selectedPrice!)"
    }
    
    
}

// MARK: - BUTTON ACTION AND SAVE DATA

extension MedicineViewController {
    
    @IBAction func addToChartPressed(_ sender: UIButton) {
        
        // Get nameMedicine, price, count data, total bayar
        
        let priceItem = Double(priceLabelData!)! * 1000
        let countValueItem = Double(countValue)
        let deliveryCharges = Double(selectedPrice!)! * 1000
        let totalPay = (priceItem * countValueItem) + deliveryCharges  // 36000.0
        
        let numberToFormat = totalPay
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let formattedNumber = numberFormatter.string(from: NSNumber(value:numberToFormat))
        
        
        let alert = UIAlertController(title: "Order are stored", message: "Thank you for buying", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Close", style: .default) { (action) in
            
            // What happen if user click close button
    
            let newChart = MedicineObject()
            newChart.count = String(self.countValue)
            newChart.medicine = self.title
            newChart.medicinePrice = self.priceLabelData
            newChart.totalPay = formattedNumber! // 36,000
            newChart.image = self.imageString
            
            
            self.saveData(medicineObject: newChart)
            self.navigationController?.popViewController(animated: true)
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        
        countLabel.text = String("Count: \(Int(sender.value))")
        countValue = Int(sender.value)
    }
    
    
    
    func saveData(medicineObject: MedicineObject) {
        do {
            try realm.write {
                realm.add(medicineObject)
            }
        } catch {
            print(error.localizedDescription)
        }

    }
    

    
}
