//
//  Ingredient.swift
//  SnapChef
//
//  Created by Saumyadeep Ray on 28/03/26.
//

import Foundation
import UIKit

struct Ingredient {
    let name: String
    let emoji: String
    let quantity: String
}


let sampleIngredients: [Ingredient] = [
    Ingredient(name:"Egg", emoji: "🥚", quantity: "3"),
    Ingredient(name:"Sugar", emoji: "🍬", quantity: "100g"),
    Ingredient(name:"Flour", emoji: "🍞", quantity: "200g"),
    Ingredient(name:"Milk", emoji: "🥛", quantity: "200ml"),
    Ingredient(name:"Butter", emoji: "🧀", quantity: "100g"),
    Ingredient(name:"Vanilla Extract", emoji: "🌿", quantity: "1 tsp"),
    Ingredient(name:"Chocolate Chips", emoji: "🍫", quantity: "100g"),
    Ingredient(name:"Onion", emoji: "🧅", quantity: "1"),
];
