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
        Category(image: "favorite", name: "Favorite", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "vitamin", name: "Vitamin", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "facial", name: "Perawatan Wajah", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "skincare", name: "Perawatan Tubuh", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "medical", name: "Alat Kesehatan", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "medicalRecord", name: "Alat Non Medis", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "contraseptive", name: "Alat Kontrasepsi", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "baby", name: "Bayi", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        Category(image: "toddler", name: "Lain-lain", price: "", apotek: "", medicineSummary: "", description: "", priceDeliver: ["",""]),
        
    ]
    
    // MARK: - FAVORITE
    let favorite: [Category] = [
        
        Category(image: "contraseptiveOne", name: "Spiral", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "contraseptiveTwo", name: "Suntik", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "contraseptiveThree", name: "Pil", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "contraseptiveFour", name: "Condom", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    
    // MARK: - VITAMIN
    let vitamin: [Category] = [
        
        Category(image: "vitaminOne", name: "Vitamin A", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "vitaminTwo", name: "Vitamin B", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "vitaminThree", name: "Vitamin C", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "vitaminFour", name: "Vitamin D", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - PERAWATAN WAJAH
    let perawatanWajah: [Category] = [
        
        Category(image: "facialOne", name: "Biore", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "facialTwo", name: "Ponds", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "facialThree", name: "Citra", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "facialFour", name: "Garnier", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - PERAWATAN TUBUH
    let perawatanTubuh: [Category] = [
        
        Category(image: "bodyOne", name: "Betason", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "bodyTwo", name: "Appeton", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "bodyThree", name: "Sangobion", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "bodyFour", name: "Thermolyte", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - ALAT KESEHATAN
    let alatKesehatan: [Category] = [
        
        Category(image: "healthOne", name: "Contact Lens", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "healthTwo", name: "Glass", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "healthThree", name: "Mask", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "healthFour", name: "Glove", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - ALAT NON MEDIS
    let alatNonMedis: [Category] = [
        
        Category(image: "nonMedisOne", name: "Senter", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "nonMedisTwo", name: "Timbangan", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "nonMedisThree", name: "Bantal", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "nonMedisFour", name: "Box Bayi", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - ALAT KONTRASEPSI
    let alatKontrasepsi: [Category] = [
        
        Category(image: "contraseptiveOne", name: "Spiral", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "contraseptiveTwo", name: "Suntik", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "contraseptiveThree", name: "Pil", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "contraseptiveFour", name: "Condom", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - BAYI
    let bayi: [Category] = [
        
        Category(image: "babyOne", name: "Bedak", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "babyTwo", name: "Popok", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "babyThree", name: "Botol", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "babyFour", name: "Termometer", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    // MARK: - LAIN-LAIN
    let lainLain: [Category] = [
        
        Category(image: "lainLainOne", name: "Penyangga Tangan", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "lainLainTwo", name: "Tongkat", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "lainLainThree", name: "Power Tone", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ]),
        Category(image: "lainLainFour", name: "Nebulizer", price: "12.000", apotek: "Kimia Farma", medicineSummary: "Paracetamol 325 mg rasa strawberry", description: "Meningkatkan risiko perdarahan, jika digunakan bersamaan dengan warfarin. \nMenurunkan efek paracetamol, jika digunakan dengan carbamazepine, phenytoin, phenobarbital, cholestyramine, dan imatinib. \nMeningkatkan efek samping obat busulfan. \nMeningkatkan kemungkinan munculnya efek samping paracetamol, jika digunakan dengan metoclopramide, domperidone, atau probenecid.", priceDeliver: [ "10.000", "20.000", "30.0000" ])
        
    ]
    
    
    
    
}


