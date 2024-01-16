//
//  RecipieView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 02/12/2023.
//

import SwiftUI

struct RecipieView: View {
    var recipie: Recipe
    var body: some View {
        ScrollView {
                AsyncImage(url: URL(string: recipie.image), scale: 1) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 350)
                        .frame(maxWidth: .infinity)
                        .shadow(color: .gray.opacity(0.5), radius: 24, x: -4 , y:10)
                } placeholder: {
                    VStack{
                        Image(systemName:"photo")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        ProgressView()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 350)
                    .background(.gray.opacity(0.3))
                    .shadow(color: .gray.opacity(0.5), radius: 24, x: -4 , y:10)
                }
            
                
                
            VStack(spacing: 24){
                    VStack( alignment:.leading, spacing:8) {
                        Text(recipie.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text(recipie.description)
                    }.padding(.top, 24)
                        
                    VStack(alignment:.leading, spacing:8){
                        Text("Ingredients")
                            .font(.headline)
                        Text(recipie.ingredients)
                    }
                    VStack(alignment: .leading, spacing:8){
                        Text("Directioms")
                            .font(.headline)
                        Text(recipie.direction)
                    }
                VStack(alignment:.leading, spacing:8){
                    Text("Ingredients")
                        .font(.headline)
                    Text(recipie.ingredients)
                }
                }.padding(.horizontal, 16)
            
            Spacer()
           
        }
        .ignoresSafeArea()
    }
}

struct RecipieView_Previews: PreviewProvider {
    static var previews: some View {
        RecipieView(recipie: .all[1])
    }
}
