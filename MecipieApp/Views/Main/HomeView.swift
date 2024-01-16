//
//  HomeView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 29/11/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipiesVM:RecipieViewModel
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: recipiesVM.recipies)
            }
//            .toolbar(content: {
//                ToolbarItem {
//                    Button {
//                        
//                    } label: {
//                        Text("Add new")
//                        Image(systemName: "plus")
//                            .font(.callout)
//                    }
//                    .fontWeight(.bold)
//
//                }
//            })
            .navigationTitle("Home")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(RecipieViewModel())
    }
}
