//
//  StepsView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 29.08.2025.
//

import UIKit

final class StepsView: WABaseInfoView {
    
    private let barsView = WABarsView()
    
    func configure(with items: [WABarView.Data]) {
        barsView.configure(with: items)
    }
    
}

extension StepsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(barsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            barsView.heightAnchor.constraint(equalToConstant: 172) // TODO: Need to fix it
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
    
    }
}

