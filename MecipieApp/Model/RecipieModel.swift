//
//  RecipieModel.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 01/12/2023.
//

import Foundation

enum Category: String, CaseIterable {
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case desert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name:String
    let image:String
    let description:String
    let ingredients:String
    let direction:String
    let category: Category.RawValue
    let datePublished:String
    let url:String
}

extension Recipe {
    static let all : [Recipe] = [
    Recipe(
        name: "Caramelized Onion Mashed Potatoes",
        image:"https://www.forksoverknives.com/uploads/2023/11/Caramelized-Onion-Mashed-Potatoes-wordpress-1.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
        description: "Equal parts savory and sweet, caramelized onions are a surefire way to add a special touch to any dish. Here, creamy mashed potatoes get a boost of flavor from the deeply browned onion slices and are sprinkled with chives for an herbaceous finishing touch.",
        ingredients: "3 medium yellow onions, cut into thin wedges 1 teaspoon packed brown sugar (optional) 3 lb. Yukon gold potatoes 2 cloves garlic, halved ½ to 1 cup unsweetened,",
        direction: "In a large skillet cook onions over medium 25 to 30 minutes or until well browned, stirring occasionally and adding water, 1 to 2 teaspoons at a time, as needed to prevent sticking. After 10 minutes, if desired, add brown sugar. When onions are done, remove skillet from heat. In a large saucepan combine potatoes and garlic.",
        category: "Breakfast",
        datePublished: "16-01-2023",
        url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/cauliflower-parathas/") ,
    
    Recipe(
        name: "Cauliflower Parathas",
        image:"https://www.forksoverknives.com/uploads/2023/11/Greek-Stuffed-Mini-Peppers-wordpress.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
        description: "Equal parts savory and sweet, caramelized onions are a surefire way to add a special touch to any dish. Here, creamy mashed potatoes get a boost of flavor from the deeply browned onion slices and are sprinkled with chives for an herbaceous finishing touch.",
        ingredients: "3 medium yellow onions, cut into thin wedges 1 teaspoon packed brown sugar (optional) 3 lb. Yukon gold potatoes 2 cloves garlic, halved ½ to 1 cup unsweetened,",
        direction: "In a large skillet cook onions over medium 25 to 30 minutes or until well browned, stirring occasionally and adding water, 1 to 2 teaspoons at a time, as needed to prevent sticking. After 10 minutes, if desired, add brown sugar. When onions are done, remove skillet from heat. In a large saucepan combine potatoes and garlic.",
        category: "Side",
        datePublished: "16-01-2023",
        url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/cauliflower-parathas/"),
    
    Recipe(
        name: "Middle Eastern Red Rice Pilaf",
        image:"https://www.forksoverknives.com/uploads/2023/11/Scrambled-Tofu-Bake-with-Mushrooms-and-Spinach-wordpress.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
        description: "Equal parts savory and sweet, caramelized onions are a surefire way to add a special touch to any dish. Here, creamy mashed potatoes get a boost of flavor from the deeply browned onion slices and are sprinkled with chives for an herbaceous finishing touch.",
        ingredients: "3 medium yellow onions, cut into thin wedges 1 teaspoon packed brown sugar (optional) 3 lb. Yukon gold potatoes 2 cloves garlic, halved ½ to 1 cup unsweetened,",
        direction: "In a large skillet cook onions over medium 25 to 30 minutes or until well browned, stirring occasionally and adding water, 1 to 2 teaspoons at a time, as needed to prevent sticking. After 10 minutes, if desired, add brown sugar. When onions are done, remove skillet from heat. In a large saucepan combine potatoes and garlic.",
        category: "Dessert",
        datePublished: "16-01-2023",
        url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/cauliflower-parathas/"),
    
    Recipe(
           name: "Scrambled Tofu Casserole with Mushrooms and Spinach",
           image:"https://www.forksoverknives.com/uploads/2023/11/Caramelized-Onion-Mashed-Potatoes-wordpress-1.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
           description: "Equal parts savory and sweet, caramelized onions are a surefire way to add a special touch to any dish. Here, creamy mashed potatoes get a boost of flavor from the deeply browned onion slices and are sprinkled with chives for an herbaceous finishing touch.",
           ingredients: "3 medium yellow onions, cut into thin wedges\n1 teaspoon packed brown sugar (optional)\n3 lb. Yukon gold potatoes\n2 cloves garlic, halved\n½ to 1 cup unsweetened, ",
           direction: "In a large skillet cook onions over medium 25 to 30 minutes or until well browned, stirring occasionally and adding water, 1 to 2 teaspoons at a time, as needed to prevent sticking. After 10 minutes, if desired, add brown sugar. When onions are done, remove skillet from heat. In a large saucepan combine potatoes and garlic. ",
           category: "Breakfast",
           datePublished: "16-01-2023",
           url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/cauliflower-parathas/"),
    
    Recipe(
        name: "Shepherd’s Pie",
        image:"https://www.forksoverknives.com/uploads/2023/10/Garlic-Squash-Steaks-with-Herbed-Pear-Potato-Mash-wordpress.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
        description: "Indulge in the rich, creamy goodness of these Garlic Parmesan Mashed Potatoes, a classic comfort food elevated with a touch of gourmet flair. Roasted garlic and grated Parmesan cheese add layers of flavor, while fresh parsley provides a herbaceous accent.",
        ingredients: "2 pounds Yukon gold potatoes, peeled and diced\n4 cloves garlic, roasted and mashed\n¼ cup unsalted butter, softened\n¼ cup grated Parmesan cheese\n¼ cup chopped fresh parsley\nSalt and pepper to taste",
        direction: "Preheat oven to 400°F (200°C). Wrap garlic cloves in aluminum foil and roast for 20-25 minutes, or until softened. Squeeze garlic out of peels and mash into a paste.\nIn a large pot, bring salted water to a boil. Add potatoes and cook for 15-20 minutes, or until tender. Drain and return to pot.\nMash potatoes with butter, garlic paste, Parmesan cheese, and parsley until smooth and creamy. Season with salt and pepper to taste.\nServe warm and enjoy!",
        category: "Snack",
        datePublished: "2023-12-05",
        url: "https://www.example.com/garlic-parmesan-mashed-potatoes"),
    
    Recipe(
        name: "Spicy Chipotle Mashed Sweet Potatoes",
        image:"https://www.forksoverknives.com/uploads/2023/10/Spicy-Tomato-Soup-with-Homemade-Croutons-wordpress.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
        description: "Indulge in the rich, creamy goodness of these Garlic Parmesan Mashed Potatoes, a classic comfort food elevated with a touch of gourmet flair. Roasted garlic and grated Parmesan cheese add layers of flavor, while fresh parsley provides a herbaceous accent.",
        ingredients: "2 pounds Yukon gold potatoes, peeled and diced\n4 cloves garlic, roasted and mashed\n¼ cup unsalted butter, softened\n¼ cup grated Parmesan cheese\n¼ cup chopped fresh parsley\nSalt and pepper to taste",
        direction: "Preheat oven to 400°F (200°C). Wrap garlic cloves in aluminum foil and roast for 20-25 minutes, or until softened. Squeeze garlic out of peels and mash into a paste.\nIn a large pot, bring salted water to a boil. Add potatoes and cook for 15-20 minutes, or until tender. Drain and return to pot.\nMash potatoes with butter, garlic paste, Parmesan cheese, and parsley until smooth and creamy. Season with salt and pepper to taste.\nServe warm and enjoy!",
        category: "Snack",
        datePublished: "2023-12-05",
        url: "https://www.example.com/garlic-parmesan-mashed-potatoes"),
    
    Recipe(
        name: "Good Garlicky Mashed Potatoes",
        image:"https://www.forksoverknives.com/uploads/2023/11/Good-Garlicky-Mashed-Potatoes-wordpress.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=367&dpr=2",
        description: "Equal parts savory and sweet, caramelized onions are a surefire way to add a special touch to any dish. Here, creamy mashed potatoes get a boost of flavor from the deeply browned onion slices and are sprinkled with chives for an herbaceous finishing touch.",
        ingredients: "3 medium yellow onions, cut into thin wedges 1 teaspoon packed brown sugar (optional) 3 lb. Yukon gold potatoes 2 cloves garlic, halved ½ to 1 cup unsweetened,",
        direction: "In a large skillet cook onions over medium 25 to 30 minutes or until well browned, stirring occasionally and adding water, 1 to 2 teaspoons at a time, as needed to prevent sticking. After 10 minutes, if desired, add brown sugar. When onions are done, remove skillet from heat. In a large saucepan combine potatoes and garlic.",
        category: "Snack",
        datePublished: "16-01-2023",
        url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/cauliflower-parathas/")
    ]
}
