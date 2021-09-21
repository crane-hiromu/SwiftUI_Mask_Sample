//
//  TutorialHoleView.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import SwiftUI

// MARK: - View
struct TutorialHoleView: View {

    var body: some View {
        // hole Path
        let holePath = UIBezierPath(roundedRect: CGRect(
            x: 8,
            y: 60,
            width: 100,
            height: 80
        ), cornerRadius: 24)

        // filter Path
        var shape = Path(CGRect(
            origin: .zero,
            size: UIScreen.main.bounds.size
        ))
        shape.addPath(Path(holePath.cgPath))
        return shape.fill(style: FillStyle(eoFill: true))
    }
}

struct TutorialHoleView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialHoleView()
    }
}
