//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mohammed Sadiq on 21/11/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
