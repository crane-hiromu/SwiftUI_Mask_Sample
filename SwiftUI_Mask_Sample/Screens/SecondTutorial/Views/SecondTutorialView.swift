//
//  SecondTutorialView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI
import Combine

// MARK: - View
struct SecondTutorialView: View {

    private(set) var didTapButton = PassthroughSubject<(), Never>()

    var body: some View {
        ZStack {
            SecondTutorialFilterView()
            TutorialWindowView { self.didTapButton.send() }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// MARK: - PreviewProvider
struct SecondTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTutorialView()
    }
}
