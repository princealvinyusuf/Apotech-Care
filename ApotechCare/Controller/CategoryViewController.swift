//
//  VitaminViewController.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 03/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var categoryModel = CategoryModel()
    
    var index: Int? // 0
    var itemName = [String]() // ["Spiral", "Suntik", "Pil", "Condom"]
    
    @IBOutlet weak var collectionOne: UICollectionView!
    @IBOutlet weak var collectionTwo: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    
    
}

// MARK: - COLLECTION VIEW DELEGATE

extension CategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch index! {
        case 0:
            return categoryModel.favorite.count - 2
        case 1:
            return categoryModel.vitamin.count - 2
        case 2:
            return categoryModel.perawatanWajah.count - 2
        case 3:
            return categoryModel.perawatanTubuh.count - 2
        case 4:
            return categoryModel.alatKesehatan.count - 2
        case 5:
            return categoryModel.alatNonMedis.count - 2
        case 6:
            return categoryModel.alatKontrasepsi.count - 2
        case 7:
            return categoryModel.alatKesehatan.count - 2
        case 8:
            return categoryModel.lainLain.count - 2
        default:
            print("Default Item of collection view")
        }
        return 1
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        switch index! {
        case 0:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                
                let index = categoryModel.favorite[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                
                let index = categoryModel.favorite[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 1:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.vitamin[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.vitamin[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 2:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.perawatanWajah[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.perawatanWajah[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 3:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.perawatanTubuh[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.perawatanTubuh[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 4:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatKesehatan[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatKesehatan[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 5:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatNonMedis[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatNonMedis[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 6:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatKontrasepsi[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatKontrasepsi[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 7:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.bayi[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.bayi[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 8:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.lainLain[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.productLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.lainLain[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.productLabel.text = index.name
                
                return cellTwo
                
            }
            
            
        default:
            print("Default item of cellforitemat")
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
        
        if collectionView == self.collectionOne {
            print("Collection One Pressed")
            switch indexPath.row {
            case 0:
                prepareDataToMedicine(itemName[indexPath.row], indexNumber: indexPath.row)
            case 1:
                prepareDataToMedicine(itemName[indexPath.row], indexNumber: indexPath.row)
            default:
                print("Default Item")
            }
            
        }
        
        if collectionView == self.collectionTwo {
            print("Collection Two Pressed")
            switch indexPath.row {
            case 0:
                prepareDataToMedicine(itemName[indexPath.row + 2], indexNumber: indexPath.row + 2)
            case 1:
                prepareDataToMedicine(itemName[indexPath.row + 2], indexNumber: indexPath.row + 2)
            default:
                print("Default Item")
            }
        }
        
        
        
    }
    
    func prepareDataToMedicine(_ index: String, indexNumber: Int) {
        switch index {
        case "Spiral":
            let indexPath = categoryModel.favorite[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Suntik":
            let indexPath = categoryModel.favorite[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Pil":
            let indexPath = categoryModel.favorite[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Condom":
            let indexPath = categoryModel.favorite[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Vitamin A":
            let indexPath = categoryModel.vitamin[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Vitamin B":
            let indexPath = categoryModel.vitamin[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Vitamin C":
            let indexPath = categoryModel.vitamin[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Vitamin D":
            let indexPath = categoryModel.vitamin[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Biore":
            let indexPath = categoryModel.perawatanWajah[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Ponds":
            let indexPath = categoryModel.perawatanWajah[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Citra":
            let indexPath = categoryModel.perawatanWajah[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Garnier":
            let indexPath = categoryModel.perawatanWajah[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Betason":
            let indexPath = categoryModel.perawatanTubuh[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Appeton":
            let indexPath = categoryModel.perawatanTubuh[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Sangobion":
            let indexPath = categoryModel.perawatanTubuh[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Thermolyte":
            let indexPath = categoryModel.perawatanTubuh[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Contact Lens":
            let indexPath = categoryModel.alatKesehatan[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Glass":
            let indexPath = categoryModel.alatKesehatan[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Mask":
            let indexPath = categoryModel.alatKesehatan[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Glove":
            let indexPath = categoryModel.alatKesehatan[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Senter":
            let indexPath = categoryModel.alatNonMedis[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Timbangan":
            let indexPath = categoryModel.alatNonMedis[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Bantal":
            let indexPath = categoryModel.alatNonMedis[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Box Bayi":
            let indexPath = categoryModel.alatNonMedis[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Bedak":
            let indexPath = categoryModel.bayi[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Popok":
            let indexPath = categoryModel.bayi[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Botol":
            let indexPath = categoryModel.bayi[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Termometer":
            let indexPath = categoryModel.bayi[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Penyangga Tangan":
            let indexPath = categoryModel.lainLain[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Tongkat":
            let indexPath = categoryModel.lainLain[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Power Tone":
            let indexPath = categoryModel.lainLain[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        case "Nebulizer":
            let indexPath = categoryModel.lainLain[indexNumber]
            let image = UIImage(named: "\(indexPath.image)")
            
            let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
            medicineVC.title = indexPath.name
            medicineVC.medicineImageViewData = image
            medicineVC.apotechLabelData = indexPath.apotek
            medicineVC.medicineSummaryData = indexPath.medicineSummary
            medicineVC.priceLabelData = indexPath.price
            medicineVC.medicineDescriptionData = indexPath.description
            medicineVC.imageString = indexPath.image
            self.navigationController?.pushViewController(medicineVC, animated: true)
            
        default:
            print("Default Item")
        }
    }
    
    
}

