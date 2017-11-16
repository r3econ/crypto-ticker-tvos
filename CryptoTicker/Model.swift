//
//  TickerItem.swift
//  CryptoTicker
//
//  Created by Rafał on 16.11.17.
//  Copyright © 2017 mycompany. All rights reserved.
//

import Foundation

struct TickerList: Codable {
    var usd: TickerItem
    var eur: TickerItem
    
    enum CodingKeys : String, CodingKey {
        case usd = "USD"
        case eur = "EUR"
    }
}

struct TickerItem: Codable {
    var recentMarketPrice: Double
    var currencySymbol: String
    
    enum CodingKeys : String, CodingKey {
        case recentMarketPrice = "last"
        case currencySymbol = "symbol"
    }
}
