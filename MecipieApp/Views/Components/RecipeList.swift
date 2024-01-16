//
//  RecipeList.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 01/12/2023.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    var body: some View {
        VStack {
            Text("\(recipes.count) \(recipes.count > 1 ? "Recipies" : "Recipie")")
                .font(.headline)
            
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 8)], spacing: 12) {
                ForEach(recipes) { recipe in
                    NavigationLink {
                        RecipieView(recipie: recipe)
                    } label: {
                        RecipeCard(recipie: recipe)
                    }
                }
            }
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipes: Recipe.all)
    }
}
