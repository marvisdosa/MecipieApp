//
//  TabbarView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 29/11/2023.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                Label("Home", systemImage: "house")
            }
            
            CategoriesView()
                .tabItem {
                Label("Categories", systemImage: "flag.2.crossed")
            }
            
            NewRecipieView()
                .tabItem {
                    Label("Add New", systemImage: "plus")
                }
            
            SettingsView()
                .tabItem {
                Label("Settings", systemImage: "gearshape")
            }
            
            FavoritesView()
                        .tabItem {
                            Label("Favorites", systemImage: "heart")
                        }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
