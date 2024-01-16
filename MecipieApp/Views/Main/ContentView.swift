//
//  ContentView.swift
//  MecipieApp
//
//  Created by Marvis Ighedosa on 29/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabbarView()
    }
}
struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(RecipieViewModel())
    }
}

