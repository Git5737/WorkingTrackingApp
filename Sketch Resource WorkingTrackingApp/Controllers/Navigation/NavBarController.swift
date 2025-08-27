//
//  NavBarController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 22.08.2025.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helveticaRegualr(with: 17)
        ]
        
        navigationBar.addBottomBoarder(with: R.Colors.separator, height: 1)
    }
}
