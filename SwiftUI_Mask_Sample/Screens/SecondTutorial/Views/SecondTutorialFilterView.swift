//
//  SecondTutorialFilterView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI

// MARK: - View
struct SecondTutorialFilterView: View {

    var body: some View {
        Color.black
            .opacity(0.7)
            .mask(SecondTutorialHoleView())
            .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PreviewProvider
struct SecondTutorialFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTutorialFilterView()
    }
}
