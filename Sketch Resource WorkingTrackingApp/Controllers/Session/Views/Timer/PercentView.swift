//
//  PercentView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 28.08.2025.
//

import UIKit

extension TimerView{
    final class PercentView: WABaseView {
        
        private let stackView: UIStackView = {
            let stack = UIStackView()
            stack.axis = .vertical
            stack.distribution = .fillProportionally
            stack.spacing = 5
            
            return stack
        }()
        
        private let percentLabel: UILabel = {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegualr(with: 23)
            label.textColor = R.Colors.titleGray
            label.textAlignment = .center
            
            return label
        }()
        
        private let subtitleLablel: UILabel = {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegualr(with: 10)
            label.textColor = R.Colors.inactive
            label.textAlignment = .center
            
            return label
        }()
        
        func configure(with title: String, andValue value: Int) {
            subtitleLablel.text = title
            percentLabel.text = "\(value)%"
        }
    }
}

extension TimerView.PercentView{
    override func setupViews(){
        super.setupViews()
        
        setupView(stackView)
        stackView.addArrangedSubview(percentLabel)
        stackView.addArrangedSubview(subtitleLablel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
    }
}
