//
//  CategoryModel.swift
//  ApotechCare
//
//  Created by Prince Alvin Yusuf on 01/04/21.
//  Copyright © 2021 Muhammad Harviando. All rights reserved.
//

import Foundation

class CategoryModel {
    
    // MARK: - CATEGORY
    let category: [Category] = [
        Category(image: "favorite", name: "Favorite"),
        Category(image: "vitamin", name: "Vitamin"),
        Category(image: "facial", name: "Perawatan Wajah"),
        Category(image: "skincare", name: "Perawatan Tubuh"),
        Category(image: "medical", name: "Alat Kesehatan"),
        Category(image: "medicalRecord", name: "Alat Non Medis"),
        Category(image: "contraseptive", name: "Alat Kontrasepsi"),
        Category(image: "baby", name: "Bayi"),
        Category(image: "toddler", name: "Lain-lain"),
        
    ]
    
    // MARK: - FAVORITE
    let favorite: [Category] = [
        
        Category(image: "contraseptiveOne", name: "Spiral"),
        Category(image: "contraseptiveTwo", name: "Suntik"),
        Category(image: "contraseptiveThree", name: "Pil"),
        Category(image: "contraseptiveFour", name: "Condom")
        
    ]
    
    
    // MARK: - VITAMIN
    let vitamin: [Category] = [
        
        Category(image: "vitaminOne", name: "Vitamin A"),
        Category(image: "vitaminTwo", name: "Vitamin B"),
        Category(image: "vitaminThree", name: "Vitamin C"),
        Category(image: "vitaminFour", name: "Vitamin D")
        
    ]
    
    // MARK: - PERAWATAN WAJAH
    let perawatanWajah: [Category] = [
        
        Category(image: "facialOne", name: "Biore"),
        Category(image: "facialTwo", name: "Ponds"),
        Category(image: "facialThree", name: "Citra"),
        Category(image: "facialFour", name: "Garnier")
        
    ]
    
    // MARK: - PERAWATAN TUBUH
    let perawatanTubuh: [Category] = [
        
        Category(image: "bodyOne", name: "Betason"),
        Category(image: "bodyTwo", name: "Appeton"),
        Category(image: "bodyThree", name: "Sangobion"),
        Category(image: "bodyFour", name: "Thermolyte")
        
    ]
    
    // MARK: - ALAT KESEHATAN
    let alatKesehatan: [Category] = [
        
        Category(image: "healthOne", name: "Contact Lens"),
        Category(image: "healthTwo", name: "Glass"),
        Category(image: "healthThree", name: "Mask"),
        Category(image: "healthFour", name: "Glove")
        
    ]
    
    // MARK: - ALAT NON MEDIS
    let alatNonMedis: [Category] = [
        
        Category(image: "nonMedisOne", name: "Senter"),
        Category(image: "nonMedisTwo", name: "Timbangan"),
        Category(image: "nonMedisThree", name: "Bantal"),
        Category(image: "nonMedisFour", name: "Box Bayi")
        
    ]
    
    // MARK: - ALAT KONTRASEPSI
    let alatKontrasepsi: [Category] = [
        
        Category(image: "contraseptiveOne", name: "Spiral"),
        Category(image: "contraseptiveTwo", name: "Suntik"),
        Category(image: "contraseptiveThree", name: "Pil"),
        Category(image: "contraseptiveFour", name: "Condom")
        
    ]
    
    // MARK: - BAYI
    let bayi: [Category] = [
        
        Category(image: "babyOne", name: "Bedak"),
        Category(image: "babyTwo", name: "Popok"),
        Category(image: "babyThree", name: "Botol"),
        Category(image: "babyFour", name: "Termometer")
        
    ]
    
    // MARK: - LAIN-LAIN
    let lainLain: [Category] = [
        
        Category(image: "lainLainOne", name: "Penyangga Tangan"),
        Category(image: "lainLainTwo", name: "Tongkat"),
        Category(image: "lainLainThree", name: "Power Tone"),
        Category(image: "lainLainFour", name: "Nebulizer")
        
    ]
    
    
    
    
}


