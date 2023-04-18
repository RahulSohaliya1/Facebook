//
//  Product.swift
//  26-3-23 API
//
//  Created by Rahul on 26/03/23.
//

import Foundation

struct ProductDetails: Codable {
    var id: Int
    var title: String
    var price: Double
    var description: String
    var catagory: String?
    var image: String?
    var rating: Ratings
}

struct Ratings: Codable {
    var rate: Double
    var count: Int
}
