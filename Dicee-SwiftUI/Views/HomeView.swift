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
            BackgroundView()
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 2)
                    DiceView(n: 3)
                }
                .padding(.horizontal)
                Spacer()
                Button(
                    action: {
                        print("Working")
                    }
                ) {
                    Text("Roll")
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.white)
                }
                .background(Color(.red))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("Dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
