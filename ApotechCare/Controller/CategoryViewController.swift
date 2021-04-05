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
    
    var index: Int?
    
    @IBOutlet weak var collectionOne: UICollectionView!
    @IBOutlet weak var collectionTwo: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print(index!)
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
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                
                let index = categoryModel.favorite[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                
                let index = categoryModel.favorite[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 1:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.vitamin[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.vitamin[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 2:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.perawatanWajah[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.perawatanWajah[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 3:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.perawatanTubuh[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.perawatanTubuh[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 4:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatKesehatan[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatKesehatan[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 5:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatNonMedis[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatNonMedis[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 6:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatKontrasepsi[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatKontrasepsi[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 7:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.alatKesehatan[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.alatKesehatan[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
        case 8:
            if collectionView == self.collectionOne {
                let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierOne", for: indexPath) as! CategoryCell
                
                let index = categoryModel.lainLain[indexPath.row] // 4 data -0-3
                let image = UIImage(named: "\(index.image)")
                
                cellOne.imageView.image = image
                cellOne.vitaminLabel.text = index.name
                
                return cellOne
            }
            
            if collectionView == self.collectionTwo {
                let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "vitaminIdentifierTwo", for: indexPath) as! CategoryCell
                let index = categoryModel.lainLain[indexPath.row + 2]
                let image = UIImage(named: "\(index.image)")
                
                cellTwo.imageView.image = image
                cellTwo.vitaminLabel.text = index.name
                
                return cellTwo
                
            }
            
            
        default:
            print("Default item of cellforitemat")
        }
        
        return UICollectionViewCell()
    }
    
    
    
}

