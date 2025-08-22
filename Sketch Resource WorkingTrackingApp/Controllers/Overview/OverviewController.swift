//
//  OverviewController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class OverviewController: BaseController {
    
    private let allWrokoutsButton = SecondaryButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(allWrokoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWrokoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWrokoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWrokoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWrokoutsButton.widthAnchor.constraint(equalToConstant: 130),
        ])
    }
    
    override func configure() {
        super.configure()
        
        allWrokoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWrokoutsButton.setTitle(Resouces.Strings.Overview.allWarcoutsButton)
        allWrokoutsButton.addTarget(self, action: #selector(allWorkoutsButtonAction), for: .touchUpInside)
    }
}

@objc extension OverviewController {
    func allWorkoutsButtonAction() {
        print("All wroughtouts button taped")
    }
}
