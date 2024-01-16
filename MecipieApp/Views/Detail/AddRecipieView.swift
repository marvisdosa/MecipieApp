//
//  AddRecipieView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 08/12/2023.
//

import SwiftUI

struct AddRecipieView: View {
    @State private var name:String = ""
    @State private var selectedCategory:Category = Category.main
    @State private var description:String = ""
    @State private var ingredients:String = ""
    @State private var direction:String = ""
    @EnvironmentObject var recipiesVM:RecipieViewModel
    
    @State private var navigateToRecipie = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases, id: \.self) { x in
                            Text(x.rawValue)
                        }
                    }.pickerStyle(.menu)
                }
                
                Section(header: Text("Description")){
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredients")){
                    TextEditor(text: $ingredients)
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem() {
                    NavigationLink(isActive: $navigateToRecipie ) {
                        RecipieView(recipie: recipiesVM.recipies.sorted{ $0.datePublished > $1.datePublished}[0])
                    } label: {
                        Button {
                            saveRecipies()
                            navigateToRecipie = true
                        } label: {
                            Text("Done")
                            Image(systemName: "checkmark")
                                .font(.callout)
                        }
                        .fontWeight(.bold)
                    }
                    .disabled(name.isEmpty)
                }
            }
            .navigationTitle("New Recipie")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct AddRecipieView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipieView()
    }
}

extension AddRecipieView {
    private func saveRecipies(){
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, direction: direction, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        recipiesVM.addRecipe(recipe: recipe)
    }
}
