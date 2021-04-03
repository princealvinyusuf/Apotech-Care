//
//  ViewController.swift
//  ApotechCare
//
//  Created by Muhammad Harviando on 01/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //Property
    @IBOutlet weak var medicineCollectionView: UICollectionView!
    @IBOutlet weak var categoryOneCollectionView: UICollectionView!
    @IBOutlet weak var categoryTwoCollectionView: UICollectionView!
    @IBOutlet weak var categoryThreeCollectionView: UICollectionView!
    
    let medicineModel = MedicineModel()
    let categoryModel = CategoryModel()
    
    var indexPathCollection: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.definesPresentationContext = true
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search by name"
        self.navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        //        DispatchQueue.main.asyncAfter(deadline: .now()) {
        //            searchController.isActive = true
        //        }
        
    }
}


// MARK: - UISearchBar
extension MainViewController: UISearchBarDelegate {
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print("Pressed")
    }
    
}



//MARK: - UICollectionView

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.medicineCollectionView {
            return medicineModel.medicine.count
        }
        
        if collectionView == self.categoryOneCollectionView {
            return categoryModel.category.count - 6
        }
        
        if collectionView == self.categoryTwoCollectionView {
            return categoryModel.category.count - 6
        }
        
        if collectionView == self.categoryThreeCollectionView {
            return categoryModel.category.count - 6
        }
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.medicineCollectionView {
            let cellMedicine = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionIdentifier", for: indexPath) as! MedicineCell
            let index = medicineModel.medicine[indexPath.row]
            let image = UIImage(named: "\(index.image)")
            cellMedicine.imageView.image = image
            cellMedicine.medicineLabel.text = index.medicine
            cellMedicine.priceLabel.text = index.price
            
            return cellMedicine
        }
        
        if collectionView == self.categoryOneCollectionView {
            let cellCategory = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryOneIdentifier", for: indexPath) as! CategoryCellOne
            let index = categoryModel.category[indexPath.row]
            let image = UIImage(named: "\(index.image)")
            cellCategory.imageView.image = image
            cellCategory.categoryLabel.text = index.name
            
            return cellCategory
        }
        
        if collectionView == self.categoryTwoCollectionView {
            let cellCategory = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryTwoIdentifier", for: indexPath) as! CategoryCellTwo
            let index = categoryModel.category[indexPath.row + 3]
            let image = UIImage(named: "\(index.image)")
            cellCategory.imageView.image = image
            cellCategory.categoryLabel.text = index.name
            
            return cellCategory
        }
        
        if collectionView == self.categoryThreeCollectionView {
            let cellCategory = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryThreeIdentifier", for: indexPath) as! CategoryCellThree
            let index = categoryModel.category[indexPath.row + 6]
            let image = UIImage(named: "\(index.image)")
            cellCategory.imageView.image = image
            cellCategory.categoryLabel.text = index.name
            
            return cellCategory
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.medicineCollectionView {
            
            switch indexPath.row {
            case 0:
                performScreenPresentation(index: 0)
            case 1:
                performScreenPresentation(index: 1)
            case 2:
                performScreenPresentation(index: 2)
            case 3:
                performScreenPresentation(index: 3)
            case 4:
                performScreenPresentation(index: 4)
            case 5:
                performScreenPresentation(index: 5)
            case 6:
                performScreenPresentation(index: 6)
            case 7:
                performScreenPresentation(index: 7)
            case 8:
                performScreenPresentation(index: 8)
            case 9:
                performScreenPresentation(index: 9)
            case 10:
                performScreenPresentation(index: 10)
            default:
                print("Default Item")
            }
            
            
            
        }
        
        if collectionView == self.categoryOneCollectionView {
            
            switch indexPath.row {
            case 0:
                performScreenPresentationOne(index: 0)
            case 1:
                performScreenPresentationOne(index: 0)
            default:
            print("Default Item")
            }
            
    
            
        }
        
        if collectionView == self.categoryTwoCollectionView {
            
    
            
        }
        
        if collectionView == self.categoryThreeCollectionView {
            
    
            
        }
        
        
        
    }
    
    func performScreenPresentation(index: Int) {
        
        switch index {
        case 0:
            prepareData(index)
        case 1:
            prepareData(index)
        case 2:
            prepareData(index)
        case 3:
            prepareData(index)
        case 4:
            prepareData(index)
        case 5:
            prepareData(index)
        case 6:
            prepareData(index)
        case 7:
            prepareData(index)
        case 8:
            prepareData(index)
        case 9:
            prepareData(index)
        case 10:
            prepareData(index)
        default:
            print("Default Item")
        }
            
        
    }
    
    
    func performScreenPresentationOne(index: Int) {
        switch index {
        case 0:
            prepareDataOne(index)
        case 1:
            prepareDataOne(index)
        default:
            print("Default Item")
        }
    }
    
    func prepareData(_ index : Int) {
        let indexPath = medicineModel.medicine[index]
        let image = UIImage(named: "\(indexPath.image)")
        
        let medicineVC = storyboard?.instantiateViewController(identifier: "medicineViewController") as! MedicineViewController
        medicineVC.title = indexPath.medicine
        medicineVC.medicineImageViewData = image
        medicineVC.apotechLabelData = indexPath.apotek
        medicineVC.medicineSummaryData = indexPath.medicineSummary
        medicineVC.priceLabelData = indexPath.price
        medicineVC.medicineDescriptionData = indexPath.description
        medicineVC.imageString = indexPath.image
        self.navigationController?.pushViewController(medicineVC, animated: true)
    }
    
    
    func prepareDataOne(_ index : Int) {
        let categoryVC = storyboard?.instantiateViewController(identifier: "categoryViewController") as! CategoryViewController
        categoryVC.index = index
        self.navigationController?.pushViewController(categoryVC, animated: true)
    }
    
    
}
