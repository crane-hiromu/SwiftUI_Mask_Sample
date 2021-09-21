//
//  TutorialWindowView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI

// MARK: - View
struct TutorialWindowView: View {

    var handler: (() -> Void)?

    var body: some View {
        VStack {
            Text("Title")
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))

            Text("Description")
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))

            Button(action: { handler?() }, label: {
                Text("OK")
                    .frame(width: 252, height: 44)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(4)
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
            })
            .contentShape(Rectangle())
        }
        .frame(maxWidth: 300)
        .background(Color.white)
        .cornerRadius(4)
    }
}

// MARK: - PreviewProvider
struct TutorialWindowView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialWindowView()
    }
}
