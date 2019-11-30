//
//  Product.swift
//  VisitorPatternExample
//
//  Created by Berk Batuhan ŞAKAR on 30.11.2019.
//  Copyright © 2019 Berk Batuhan ŞAKAR. All rights reserved.
//

import Foundation

struct ProductModel {
    let name: String
    let price: String
    init(name:String, price:String) {
        self.name = name
        self.price = price
    }
    init() {
        name = ""
        price = ""
    }
}
