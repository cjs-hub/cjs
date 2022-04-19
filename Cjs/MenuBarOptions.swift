//
//  MenuBarOptions.swift
//  Cjs
//
//  Created by Ahmed Yussufu on 2022-04-11.
//

import Foundation

enum MenuBarOptions: Int, CaseIterable {
    case BreakfastCombos
    case DesignerOmelettes
    case AmazingMuffins
    case PancakesAndWaffles
    case Pastries
    case FruitfulMornings
    case FrenchToastsAndAwesomeExtras
    
    var title: String {
        switch self {
        case .BreakfastCombos: return "Breakfast combos"
        case .DesignerOmelettes: return "Designer Omelettes"
        case .AmazingMuffins: return "Amazing Muffins"
        case .PancakesAndWaffles: return "Pancakes & Waffles"
        case .Pastries: return "Pastries"
        case .FruitfulMornings: return "Fruitful Mornings"
        case .FrenchToastsAndAwesomeExtras: return "French Toasts & Awesome Extras"
        }
    }
    
    var foodItems: [FoodItem] {
        switch self {
        case .BreakfastCombos:
            return breakfastcombo
        case .DesignerOmelettes:
            return designeromelettes
        case .AmazingMuffins:
            return breakfastcombo
        case .PancakesAndWaffles:
            return designeromelettes
        case .Pastries:
            return designeromelettes
        case .FruitfulMornings:
            return designeromelettes
        case .FrenchToastsAndAwesomeExtras:
            return designeromelettes
        }
    }
}
