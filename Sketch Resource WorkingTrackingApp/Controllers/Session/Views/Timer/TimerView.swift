//
//  TimerView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 25.08.2025.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView: ProgresView = {
        let view = ProgresView()
        view.drawProgres(with: 0.5)
        return view
    }()
    
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        
        setupView(progressView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor),
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
    }
}
