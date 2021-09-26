//
//  TutorialFilterView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI

// MARK: - View
struct TutorialFilterView: View {

    var body: some View {
        Color.black
            .opacity(0.7)
            .mask(TutorialHoleView())
            .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PreviewProvider
struct TutorialFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialFilterView()
    }
}
