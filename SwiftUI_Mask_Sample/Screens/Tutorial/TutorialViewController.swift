//
//  TutorialViewController.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import UIKit
import SwiftUI
import Combine

// MARK: - Controller
final class TutorialViewController: UIHostingController<TutorialView> {

    // MARK: Property

    private var cancellables = Set<AnyCancellable>()

    // MARK: Initializer

    init() {
        super.init(rootView: .init())
    }

    @objc required dynamic convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
}

// MARK: - Override
extension TutorialViewController {

    override func loadView() {
        super.loadView()
        bind()
    }
}

// MARK: - Private
private extension TutorialViewController {

    func bind() {
        rootView.didTapButton.sink { [weak self] in
            self?.dismiss(animated: true)
        }.store(in: &cancellables)
    }
}
