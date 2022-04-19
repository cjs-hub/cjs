//
//  FoodItem.swift
//  Cjs
//
//  Created by Ahmed Yussufu on 2022-04-11.
//

import Foundation

struct FoodItem: Identifiable{
    var id = UUID().uuidString
    let title: String
    let description: String
    let price: String
    let imageName: String
}

let breakfastcombo: [FoodItem] = [
    .init(title: "Rolex wrap combo", description: "Farm fresh eggs, market vegetables rolled in a home-made tortilla served with a fruit bowl, salsa and home fries", price: "KSH 950", imageName: "rolex wrap"),
    .init(title: "Omelette combo", description: "Chicken fajita omelette served with homefries", price: "KSH 890", imageName: "omelette wrap"),
    .init(title: "Chicken salad-filled croissant combo", description: "Generously filled croissant with chicken salad, mayo and cheese. Served with home fries, mixed salads, avocado and a fruit bowl.", price: "KSH 1100", imageName: "chicken wrap"),
    .init(title: "Cj's monte cristo sandwich combo", description: "Roasted turkey ham, cheese slices, mustard & cranberry sauce in a brioche bread.Served with home fries.", price: "KSH 890", imageName: "cjs monte cristo sandwich"),
    .init(title: "Fried chicken & Waffles Benedict", description: "Our Belgian Waffle topped with crispy fried chicken strips, poached eggs and hollandaise. Served with marple syrup.", price: "KSH 890", imageName: "fried chicken & waffles benedict"),
    .init(title: "Country steak & eggs", description: "Breaded Beef Steak smothered in country gravy, two eggs and pancakes or chapatis. Served with home fries.", price: "KSH 890", imageName: "country steak & eggs")
    
]

let designeromelettes: [FoodItem] = [
    .init(title: "Spinach and Mushroom", description: "Spinach, mushroom, Cheddar cheese topped with hollandaise sauce & diced tomatoes", price: "KSH 730", imageName: "spinach and mushroom" ),
    .init(title: "Chicken Fajita Omelette", description: "Spiced fajita chicken, onions, fresh green peppers, tomatoes & cheddar cheese.", price: "KSH 760", imageName: "chicken fajita omelette" ),
    .init(title: "Spanish Omelette", description: "Fresh green peppers, tomatoes & onions.", price: "KSH 730", imageName: "spanish omelette" ),
]
 
