//
//  MonthlyPerformanceView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 30.08.2025.
//


import UIKit

final class MonthlyPerformanceView: WABaseInfoView {
    
    private let chartView = WAChartsView()
    
    func configure(with items: [WAChartsView.Data]) {
       chartView.configure(with: items)
    }
    
}

extension MonthlyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(chartView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            chartView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            chartView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            chartView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            chartView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
    }
}

