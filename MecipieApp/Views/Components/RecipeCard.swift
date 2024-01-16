//
//  RecipeCard.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 01/12/2023.
//

import SwiftUI

struct RecipeCard: View {
    var recipie:Recipe
    var body: some View {
        VStack(spacing:16){
            AsyncImage(url: URL(string: recipie.image)) { image in
                image
            } placeholder: {
                VStack{
                    Image(systemName:"photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    ProgressView()
                        .foregroundColor(.black)
                }
                    .frame(width: 56, height: 56)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(width: 170, height: 220
                   , alignment: .top)
            .background(.gray.opacity(0.3))
            .cornerRadius(24)
            .shadow(color: .gray.opacity(0.5), radius: 24, x: -4 , y:10)
            
            Text(recipie.name)
                .font(.headline)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .fontWeight(.bold)
                .frame(width: 170, height: 64, alignment: .topLeading)
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipie: Recipe.all[0])
    }
}
