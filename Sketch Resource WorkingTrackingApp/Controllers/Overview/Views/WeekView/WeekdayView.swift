//
//  WeekdayView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 24.08.2025.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView{
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isTooday ? Resouces.Colors.active : Resouces.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : Resouces.Colors.inactive
            
            nameLabel.text = name.uppercased()
            dateLabel.text = "\(day)"
            dateLabel.textColor = isTooday ? .white : Resouces.Colors.inactive
        }
    }
}

extension WeekView.WeekdayView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resouces.Fonts.helveticaRegualr(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resouces.Fonts.helveticaRegualr(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 2
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
    }
}
