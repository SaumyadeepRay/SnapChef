//
//  Recipe.swift
//  SnapChef
//
//  Created by Saumyadeep Ray on 02/05/26.
//

import Foundation

// MARK: - Enums

enum Difficulty: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

enum Category: String {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
    case dessert = "Dessert"
    case snack = "Snack"
}

// MARK: - Structs

struct Recipe {
    let id: String
    var name: String
    var imageName: String
    var category: Category
    var cuisine: String
    var difficulty: Difficulty
    var cookingTime: Int
    var servings: Int
    var rating: Double
    var isFavorite: Bool = false
    var ingredients: [Ingredient]
    var steps: [String]
}

// MARK: - Sample Data

let sampleRecipes: [Recipe] = [
    
    Recipe(
        id: "rec_001",
        name: "Pasta Carbonara",
        imageName: "pasta_carbonara",
        category: .dinner,
        cuisine: "Italian",
        difficulty: .medium,
        cookingTime: 25,
        servings: 4,
        rating: 4.7,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Spaghetti", emoji: "🍝", quantity: "400g"),
            Ingredient(name: "Eggs", emoji: "🥚", quantity: "4"),
            Ingredient(name: "Parmesan", emoji: "🧀", quantity: "100g"),
            Ingredient(name: "Bacon", emoji: "🥓", quantity: "150g")
        ],
        steps: [
            "Boil pasta in salted water until al dente.",
            "Crisp bacon in a pan over medium heat.",
            "Whisk eggs and parmesan in a bowl.",
            "Combine hot pasta with bacon and egg mixture, tossing quickly.",
            "Serve immediately with extra parmesan."
        ]
    ),
    
    Recipe(
        id: "rec_002",
        name: "Palak Paneer",
        imageName: "palak_paneer",
        category: .lunch,
        cuisine: "Indian",
        difficulty: .hard,
        cookingTime: 45,
        servings: 4,
        rating: 4.5,
        ingredients: [
            Ingredient(name: "Spinach", emoji: "🥬", quantity: "500g"),
            Ingredient(name: "Paneer", emoji: "🧀", quantity: "300g"),
            Ingredient(name: "Tomato", emoji: "🍅", quantity: "200g"),
            Ingredient(name: "Green Chilies", emoji: "🌶️", quantity: "50g"),
            Ingredient(name: "Onion", emoji: "🧅", quantity: "100g"),
            Ingredient(name: "Garlic", emoji: "🧄", quantity: "100g"),
            Ingredient(name: "Cumin & Garam Masala", emoji: "🧂", quantity: "50g"),
        ],
        steps: [
                "Blanch the spinach in boiling water, then blend it into a puree.",
                "Sauté chopped onions, garlic, green chilies, and a little tomato.",
                "Pour in the spinach puree, add spices, simmer for a few minutes, and gently fold in the paneer cubes"]
    ),
    
    Recipe(
        id: "rec_003",
        name: "Masala Chai",
        imageName: "masala_chai",
        category: .snack,
        cuisine: "Indian",
        difficulty: .easy,
        cookingTime: 20,
        servings: 4,
        rating: 4.8,
        ingredients: [
            Ingredient(name: "Black Tea Leaves", emoji: "☕", quantity: "100g"),
            Ingredient(name: "Milk", emoji: "🥛", quantity: "300ml"),
            Ingredient(name: "Water", emoji: "💧", quantity: "100ml"),
            Ingredient(name: "Fresh Ginger", emoji: "🫚", quantity: "10g"),
            Ingredient(name: "Cardamom pods", emoji: "🌱", quantity: "10g"),
            Ingredient(name: "Sugar", emoji: "🍬", quantity: "20g"),
        ],
        steps: [
                "Boil water with crushed ginger and cardamom.",
                "Add black tea leaves and let it steep for a minute.",
                "Pour in the milk and sugar, bring to a rolling boil, then strain into a cup."]
    ),
    

    Recipe(
        id: "rec_004",
        name: "Tacos al Pastor",
        imageName: "tacos_al_pastor",
        category: .dinner,
        cuisine: "Mexican",
        difficulty: .medium,
        cookingTime: 45,
        servings: 4,
        rating: 4.9,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Pork Shoulder", emoji: "🥩", quantity: "500g"),
            Ingredient(name: "Pineapple", emoji: "🍍", quantity: "1 cup"),
            Ingredient(name: "Corn Tortillas", emoji: "🌮", quantity: "12"),
            Ingredient(name: "Cilantro", emoji: "🌿", quantity: "1 bunch")
        ],
        steps: [
            "Thinly slice pork and marinate in achiote and spices.",
            "Grill or pan-fry pork until charred and cooked through.",
            "Warm tortillas on a griddle.",
            "Top tortillas with pork, diced pineapple, and cilantro.",
            "Serve with a squeeze of fresh lime."
        ]
    ),

    Recipe(
        id: "rec_005",
        name: "Sushi Rolls",
        imageName: "sushi_rolls",
        category: .lunch,
        cuisine: "Japanese",
        difficulty: .hard,
        cookingTime: 60,
        servings: 2,
        rating: 4.8,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Sushi Rice", emoji: "🍚", quantity: "300g"),
            Ingredient(name: "Nori Sheets", emoji: "🍙", quantity: "5"),
            Ingredient(name: "Fresh Salmon", emoji: "🐟", quantity: "200g"),
            Ingredient(name: "Cucumber", emoji: "🥒", quantity: "1")
        ],
        steps: [
            "Cook and season sushi rice with vinegar.",
            "Place nori on a bamboo mat and spread rice evenly.",
            "Add strips of salmon and cucumber in the center.",
            "Roll tightly using the mat.",
            "Slice into bite-sized pieces with a wet knife."
        ]
    ),

    Recipe(
        id: "rec_006",
        name: "Tofu Stir Fry",
        imageName: "tofu_stir_fry",
        category: .dinner,
        cuisine: "Chinese",
        difficulty: .easy,
        cookingTime: 20,
        servings: 3,
        rating: 4.4,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Firm Tofu", emoji: "🟫", quantity: "400g"),
            Ingredient(name: "Broccoli", emoji: "🥦", quantity: "1 head"),
            Ingredient(name: "Soy Sauce", emoji: "🍶", quantity: "3 tbsp"),
            Ingredient(name: "Ginger", emoji: "🫚", quantity: "1 tsp"),
            Ingredient(name: "Sesame Oil", emoji: "🫙", quantity: "1 tbsp")
        ],
        steps: [
            "Press tofu to remove excess water, then cube it.",
            "Sear tofu in a hot wok with sesame oil until golden.",
            "Add broccoli and ginger, tossing for 3 minutes.",
            "Pour in soy sauce and a splash of water.",
            "Stir until sauce thickens slightly.",
            "Serve hot over steamed white rice."
        ]
    ),
    
    Recipe(
        id: "rec_007",
        name: "Shakshuka",
        imageName: "shakshuka",
        category: .breakfast,
        cuisine: "Middle Eastern",
        difficulty: .easy,
        cookingTime: 30,
        servings: 2,
        rating: 4.6,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Eggs", emoji: "🥚", quantity: "4"),
            Ingredient(name: "Tomatoes", emoji: "🍅", quantity: "1 can"),
            Ingredient(name: "Bell Pepper", emoji: "🫑", quantity: "1"),
            Ingredient(name: "Onion", emoji: "🧅", quantity: "1")
        ],
        steps: [
            "Sauté diced onion and pepper until soft.",
            "Add tomatoes and spices, simmering for 10 minutes.",
            "Create small wells in the sauce and crack eggs into them.",
            "Cover and cook until egg whites are set.",
            "Garnish with parsley and serve with crusty bread."
        ]
    ),

    Recipe(
        id: "rec_008",
        name: "Ratatouille",
        imageName: "ratatouille",
        category: .dinner,
        cuisine: "French",
        difficulty: .medium,
        cookingTime: 50,
        servings: 4,
        rating: 4.4,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Eggplant", emoji: "🍆", quantity: "1"),
            Ingredient(name: "Zucchini", emoji: "🥒", quantity: "2"),
            Ingredient(name: "Tomato Sauce", emoji: "🥫", quantity: "200ml"),
            Ingredient(name: "Garlic", emoji: "🧄", quantity: "3 cloves")
        ],
        steps: [
            "Thinly slice eggplant, zucchini, and squash.",
            "Spread tomato sauce on the bottom of a baking dish.",
            "Arrange vegetable slices in an alternating spiral.",
            "Drizzle with olive oil, garlic, and herbs.",
            "Bake at 180°C for 40 minutes until tender."
        ]
    ),

    Recipe(
        id: "rec_009",
        name: "Pad Thai",
        imageName: "pad_thai",
        category: .dinner,
        cuisine: "Thai",
        difficulty: .medium,
        cookingTime: 30,
        servings: 2,
        rating: 4.9,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Rice Noodles", emoji: "🍜", quantity: "200g"),
            Ingredient(name: "Shrimp", emoji: "🦐", quantity: "150g"),
            Ingredient(name: "Peanuts", emoji: "🥜", quantity: "1/4 cup"),
            Ingredient(name: "Lime", emoji: "🍋", quantity: "1")
        ],
        steps: [
            "Soak noodles in warm water until soft.",
            "Stir-fry shrimp and garlic in a pan.",
            "Add noodles and Pad Thai sauce, tossing well.",
            "Push noodles aside and scramble an egg in the pan.",
            "Mix everything with crushed peanuts and lime juice."
        ]
    ),

    Recipe(
        id: "rec_010",
        name: "Greek Salad",
        imageName: "greek_salad",
        category: .lunch,
        cuisine: "Greek",
        difficulty: .easy,
        cookingTime: 15,
        servings: 2,
        rating: 4.3,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Feta Cheese", emoji: "🧀", quantity: "100g"),
            Ingredient(name: "Olives", emoji: "🫒", quantity: "10"),
            Ingredient(name: "Cucumber", emoji: "🥒", quantity: "1"),
            Ingredient(name: "Red Onion", emoji: "🧅", quantity: "1/2")
        ],
        steps: [
            "Chop cucumber, tomatoes, and onion into chunks.",
            "Toss vegetables in a bowl with olive oil and oregano.",
            "Add kalamata olives.",
            "Place a large block of feta cheese on top.",
            "Drizzle with more olive oil and serve fresh."
        ]
    ),

    Recipe(
        id: "rec_011",
        name: "Paella",
        imageName: "paella",
        category: .dinner,
        cuisine: "Spanish",
        difficulty: .hard,
        cookingTime: 55,
        servings: 6,
        rating: 4.8,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Rice", emoji: "🌾", quantity: "300g"),
            Ingredient(name: "Mussels", emoji: "🦪", quantity: "200g"),
            Ingredient(name: "Saffron", emoji: "🌸", quantity: "1 pinch"),
            Ingredient(name: "Chicken Thighs", emoji: "🍗", quantity: "300g")
        ],
        steps: [
            "Brown chicken and chorizo in a paella pan.",
            "Stir in rice and coat with oil.",
            "Add saffron-infused broth and bring to a simmer.",
            "Arrange seafood on top and cook without stirring.",
            "Let a crust (socarrat) form on the bottom before serving."
        ]
    ),

    Recipe(
        id: "rec_012",
        name: "Veggie Burger",
        imageName: "veggie_burger",
        category: .dinner,
        cuisine: "American",
        difficulty: .easy,
        cookingTime: 20,
        servings: 2,
        rating: 4.6,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Black Beans", emoji: "🫘", quantity: "400g"),
            Ingredient(name: "Burger Buns", emoji: "🍔", quantity: "2"),
            Ingredient(name: "Cheddar Cheese", emoji: "🧀", quantity: "2 slices"),
            Ingredient(name: "Lettuce", emoji: "🥬", quantity: "2 leaves"),
            Ingredient(name: "Breadcrumbs", emoji: "🍞", quantity: "50g")
        ],
        steps: [
            "Mash black beans in a bowl, then mix in breadcrumbs and seasoning.",
            "Form mixture into two thick patties.",
            "Pan-fry for 4 minutes per side until crispy outside.",
            "Melt cheese on top during the last minute.",
            "Toast the buns until golden brown.",
            "Assemble with lettuce, tomato, and your favorite sauce."
        ]
    ),

    Recipe(
        id: "rec_013",
        name: "Pancakes",
        imageName: "pancakes",
        category: .breakfast,
        cuisine: "International",
        difficulty: .easy,
        cookingTime: 15,
        servings: 3,
        rating: 4.6,
        isFavorite: false,
        ingredients: [
            Ingredient(name: "Flour", emoji: "🌾", quantity: "200g"),
            Ingredient(name: "Milk", emoji: "🥛", quantity: "250ml"),
            Ingredient(name: "Egg", emoji: "🥚", quantity: "1"),
            Ingredient(name: "Maple Syrup", emoji: "🍁", quantity: "50ml")
        ],
        steps: [
            "Whisk flour, milk, and egg into a smooth batter.",
            "Heat a buttered skillet over medium heat.",
            "Pour small circles of batter into the pan.",
            "Flip when bubbles appear on the surface.",
            "Stack high and serve with plenty of maple syrup."
        ]
    ),
]
