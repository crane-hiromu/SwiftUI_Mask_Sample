//
//  SecondTutorialHoleView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI

// MARK: - View
struct SecondTutorialHoleView: View {

    var body: some View {
        Rectangle()
            .cornerRadius(24)
            .frame(width: 100, height: 80)
            .position(x: 60, y: 150)
            .background(Color.white)
            .compositingGroup()
            .luminanceToAlpha()
    }
}

// MARK: - PreviewProvider
struct SecondTutorialHoleView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTutorialHoleView()
    }
}
