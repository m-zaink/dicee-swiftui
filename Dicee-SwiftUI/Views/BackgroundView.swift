//
//  BackgroundView.swift
//  Dicee-SwiftUI
//
//  Created by Mohammed Sadiq on 21/11/20.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
