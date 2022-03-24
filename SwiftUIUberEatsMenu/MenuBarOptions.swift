//
//  MenuBarOptions.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 15/02/2022.
//

import Foundation
import CoreText

enum MenuBarOptions: Int, CaseIterable {
    case japanese
    case american
    case italian
    case promotions
    case fancy
    
    var title: String {
        switch self {
        case .japanese: return "Japanese"
        case .american: return "American"
        case .italian: return "Italian"
        case .promotions: return "Promotions"
        case .fancy: return "Fancy"
        }
    }
    
    var foodItems: [FoodItem] {
        switch self {
        case .japanese:
            return japaneseFood
        case .american:
            return americanFood
        case .italian:
            return italianFood
        case .promotions:
            return japaneseFood + italianFood
        case .fancy:
            return italianFood + americanFood
        }
    }
}
