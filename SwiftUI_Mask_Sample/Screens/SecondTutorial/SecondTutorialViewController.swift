//
//  SecondTutorialViewController.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import UIKit
import SwiftUI
import Combine

// MARK: - Controller
final class SecondTutorialViewController: UIHostingController<SecondTutorialView> {

    // MARK: Property

    private var cancellables = Set<AnyCancellable>()

    // MARK: Initializer

    init() {
        super.init(rootView: .init())
        bind()
    }

    @objc required dynamic convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
}

// MARK: - Private
private extension SecondTutorialViewController {

    func bind() {
        rootView.didTapButton.sink { [weak self] in
            self?.dismiss(animated: true)
        }.store(in: &cancellables)
    }
}
