//
//  OverviewController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
    
    private let header = SectionHeaderView()
    private let cell = TrainingCellView()
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        cell.roundCorners([.allCorners], radius: 10)
//    }

}

extension OverviewController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(navBar)
        
        view.setupView(header)
        view.setupView(cell)
    }
    
    override func constaintView() {
        super.constaintView()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            header.topAnchor.constraint(equalTo: navBar.bottomAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            header.heightAnchor.constraint(equalToConstant: 32),
            
            cell.topAnchor.constraint(equalTo: header.bottomAnchor),
            cell.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            cell.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            cell.heightAnchor.constraint(equalToConstant: 75)
        ])
    }
    
    override func configureAppearance() { 
        super.configureAppearance()
        
        navigationController?.navigationBar.isHidden = true
        
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "EEEE, MMMM dd"
        
        header.configure(with: dataFormatter.string(from: Date()))
        cell.configure(with: "Warm Up Cardiovascular Exercise", subtitle: "Stair Climber * 10 minutes", isDone: true)
        
        cell.layoutIfNeeded()
        cell.roundCorners([.allCorners], radius: 10)
    }
}
