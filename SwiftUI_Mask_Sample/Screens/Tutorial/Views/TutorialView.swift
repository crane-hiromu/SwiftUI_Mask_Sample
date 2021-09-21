//
//  TutorialView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI
import Combine

// MARK: - View
struct TutorialView: View {

    private(set) var didTapButton = PassthroughSubject<(), Never>()

    var body: some View {
        ZStack {
            TutorialFilterView()
            TutorialWindowView { self.didTapButton.send() }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// MARK: - PreviewProvider
struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
