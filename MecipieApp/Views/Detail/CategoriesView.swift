//
//  CategoriesView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 29/11/2023.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipiesVM:RecipieViewModel
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases, id: \.self) { x in
                    NavigationLink {
                        ScrollView{
                            RecipeList(recipes: recipiesVM.recipies.filter({ $0.category == x.rawValue }))
                                .navigationTitle(x.rawValue)
                        }
                    } label: {
                        Text(x.rawValue)
                    }
                }
            }
            .navigationBarTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
