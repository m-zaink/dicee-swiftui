//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mohammed Sadiq on 21/11/20.
//

import SwiftUI

struct HomeView: View {
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(
                    action: {
                        self.leftDiceNumber = Int.random(in: 1...6)
                        self.rightDiceNumber = Int.random(in: 1...6)
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
