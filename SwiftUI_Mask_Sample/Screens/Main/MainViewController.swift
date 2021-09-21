//
//  MainViewController.swift
//  SwiftUI_Mask_Sample
//
//  Created by Tsuruta, Hiromu | ECID on 2021/09/21.
//

import UIKit

// MARK: - Controller
final class MainViewController: UIViewController {

    // MARK: Enum

    enum ViewType: Int, CaseIterable {
        case path, swiftui

        var title: String {
            switch self {
            case .path: return "UIBezierPath on SwiftUI"
            case .swiftui: return "SwiftUI のみで実装"
            }
        }
    }

    // MARK: Property

    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.backgroundColor = .white
        return table
    }()
}

// MARK: - Override
extension MainViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view = tableView
    }
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ViewType.allCases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = ViewType(rawValue: indexPath.row)?.title
        cell.accessoryType = .detailButton
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        switch ViewType(rawValue: indexPath.row) {
        case .path:
            let vc = TutorialViewController()
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            vc.view.backgroundColor = .clear
            present(vc, animated: true)

        case .swiftui:
            let vc = SecondTutorialViewController()
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            vc.view.backgroundColor = .clear
            present(vc, animated: true)

        case .none:
            break
        }
    }
}
