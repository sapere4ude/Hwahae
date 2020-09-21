//
//  Type3Model.swift
//  HwahaeProject
//
//  Created by sapere4ude on 2020/08/19.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit

struct Type3Model : Codable {
    let homeNumber: Int
    let brand_name: String
    let product_description: String
    let image_url: String
    
    init(homeNumber: Int, brand_name: String, product_description: String, image_url: String) {
        self.homeNumber = homeNumber
        self.brand_name = brand_name
        self.product_description = product_description
        self.image_url = image_url
    }
}

