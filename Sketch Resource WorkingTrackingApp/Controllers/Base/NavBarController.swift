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
            .foregroundColor: Resouces.Colors.titleGray,
            .font: Resouces.Fonts.helveticaRegualr(with: 17)
        ]
        
        navigationBar.addBottomBoarder(with: Resouces.Colors.separator, height: 1)
    }
}
