//
//  WeekView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 24.08.2025.
//

import UIKit

final class WeekView: BaseView {

    private let calendar = Calendar.current
    
    private var stackView = UIStackView()

}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        
        addView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()

        stackView.spacing = 7
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 2 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekdayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
