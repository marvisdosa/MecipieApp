//
//  NewRecipieView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 29/11/2023.
//

import SwiftUI

struct NewRecipieView: View {
    @State private var showAddRecipie = false
    var body: some View {
        NavigationView {
            Button {
                showAddRecipie = true
            } label: {
                VStack(spacing:16) {
                    Image(systemName: "plus.app")
                        .font(.system(size: 100))
                        .fontWeight(.regular)
                    Text("Add new Recipe")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .foregroundColor(.blue)
            }
            .navigationTitle("New Recipie")
            .sheet(isPresented: $showAddRecipie) {
                AddRecipieView()
            }

        }
    }
}

struct NewRecipieView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipieView()
    }
}
