//
//  RecipieViewModel.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 08/12/2023.
//

import Foundation

class RecipieViewModel: ObservableObject {
    @Published private(set) var recipies: [Recipe] = []
    
    init() {
        recipies = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipies.append(recipe)
    }
}
