//
//  HomeModel.swift
//  testApp
//
//  Created by Akarsh Ram on 08/08/23.
//

import Foundation

// MARK: - Homemodel
struct Homemodel: Codable {
    let status: Bool
    let homeData: [HomeDatum]
}

// MARK: - HomeDatum
struct HomeDatum: Codable {
    let type: Types
    let values: [Value]
}
enum Types :String ,Codable{
    case category = "category"
    case banners = "banners"
    case products = "products"

}

// MARK: - Value
struct Value: Codable {
    let id: Int
    let name: String?
    let imageURL, bannerURL: String?
    let image: String?
    let actualPrice, offerPrice: String?
    let offer: Int?
    let isExpress: Bool?

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "image_url"
        case bannerURL = "banner_url"
        case image
        case actualPrice = "actual_price"
        case offerPrice = "offer_price"
        case offer
        case isExpress = "is_express"
    }
}
