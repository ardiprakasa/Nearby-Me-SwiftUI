//
//  MerchantsFactory.swift
//  Nearby Me
//
//  Created by Hardian Prakasa on 22/07/19.
//  Copyright © 2019 DANA Indonesia. All rights reserved.
//

import Foundation


let merchants: [Merchant] = MerchantsFactory().getMerchants()

struct MerchantsFactory {
    
    let merchant1 = Merchant(id: 1,
                             name: "Kopitiam Capital Place",
                             imageName: "kopiTiam",
                             coordinates: Coordinates(latitude: -6.232032, longitude: 106.82006),
                             address: "Jl. Jenderal Gatot Subroto No.Kav 18",
                             city: "South Jakarta",
                             isFavorite: true)
    
    let merchant2 = Merchant(id: 2,
                             name: "Fore Coffee Capital Place",
                             imageName: "foreCoffe",
                             coordinates: Coordinates(latitude: -6.231884, longitude: 106.820275),
                             address: "Jalan Jend. Gatot Subroto Kav 18",
                             city: "South Jakarta")
    
    let merchant3 = Merchant(id: 3,
                             name: "Kopi Kenangan Capital Place",
                             imageName: "kopiKenangan",
                             coordinates: Coordinates(latitude: -6.23208, longitude: 106.820369),
                             address: "Jl Jenderal Gatot Subroto Kav. 18",
                             city: "")
    
    let merchant4 = Merchant(id: 4,
                             name: "MOR Capital Place",
                             imageName: "mor",
                             coordinates: Coordinates(latitude: -6.232278, longitude: 106.820359),
                             address: "Jl Jenderal Gatot Subroto Kav. 18",
                             city: "South Jakarta")
    
    let merchant5 = Merchant(id: 5,
                             name: "Kopi Oey Prijaji",
                             imageName: "kopiOey",
                             coordinates: Coordinates(latitude: -6.230104, longitude: 106.820975),
                             address: "Jl. Jenderal Gatot Subroto Kav. 24-25",
                             city: "South Jakarta")
    
    let merchant6 = Merchant(id: 6,
                             name: "MOR Menara Jamsostek",
                             imageName: "mor",
                             coordinates: Coordinates(latitude: -6.23383, longitude: 106.821195),
                             address: "Jalan Gatot Subroto no. 38",
                             city: "South Jakarta")
    
    let merchant7 = Merchant(id: 7,
                             name: "King Mango Menara Jamsostek",
                             imageName: "kingMango",
                             coordinates: Coordinates(latitude: -6.233534, longitude: 106.821575),
                             address: "Gedung Menara Jamsostek lantai 11 Unit No 2",
                             city: "South Jakarta")
    
    let merchant8 = Merchant(id: 8,
                             name: "Kopi Kenangan Menara Jamsostek",
                             imageName: "kopiKenangan",
                             coordinates: Coordinates(latitude: -6.23374, longitude: 106.821693),
                             address: "Gedung Parkir Menara Jamsostek, Lantai 1",
                             city: "South Jakarta")
    
    let merchant9 = Merchant(id: 9,
                             name: "Coffee Bean",
                             imageName: "coffeBean",
                             coordinates: Coordinates(latitude: -6.230839, longitude: 106.81754),
                             address: "Jalan Taman Widya Chandra",
                             city: "South Jakarta")
    
    let merchant10 = Merchant(id: 10,
                              name: "HokBen Kartika Chandra",
                              imageName: "hokben",
                              coordinates: Coordinates(latitude: -6.227947, longitude: 106.819705),
                              address: "Jl. Gatot Subroto Kav.21",
                              city: "South Jakarta")
    
    let merchant11 = Merchant(id: 11,
                              name: "Cuppa Coffee Patra Jasa",
                              imageName: "cuppaCoffee",
                              coordinates: Coordinates(latitude: -6.233485, longitude: 106.823406),
                              address: "Jl. Gatot Subroto Kav 32-34 #GF",
                              city: "South Jakarta")
    
    let merchant12 = Merchant(id: 12,
                              name: "KOPI KENANGAN SOPO DEL TOWER",
                              imageName: "kopiKenangan",
                              coordinates: Coordinates(latitude: -6.230849, longitude: 106.823738),
                              address: "Jl Mega kuningan Barat 3 RT 5 / RW 5",
                              city: "South Jakarta")
    
    let merchant13 = Merchant(id: 13,
                              name: "KOPI KENANGAN WISMA MULIA",
                              imageName: "kopiKenangan",
                              coordinates: Coordinates(latitude: -6.235108, longitude: 106.823459),
                              address: "Jl. Gatot Subroto No.42 Kuningan",
                              city: "South Jakarta")
    
    let merchant14 = Merchant(id: 14,
                              name: "Domino's Pizza Bellagio Kuningan",
                              imageName: "dominosPizza",
                              coordinates: Coordinates(latitude: -6.227508, longitude: 106.824197),
                              address: "Jl Prof Dr Satrio Kav E 4 No 3",
                              city: "South Jakarta")
    
    let merchant15 = Merchant(id: 15,
                              name: "Baskin Robbins Bellagio Boutique Mall",
                              imageName: "baskinRobbins",
                              coordinates: Coordinates(latitude: -6.227419, longitude: 106.824186),
                              address: "Jl. Lingkar Mega Kuningan",
                              city: "South Jakarta")
    
    func getMerchants() -> [Merchant] {
        return [merchant1, merchant2, merchant3, merchant4,
                merchant5, merchant6, merchant7, merchant8,
                merchant9, merchant10, merchant11, merchant12,
                merchant13, merchant14, merchant15]
    }
    
}
