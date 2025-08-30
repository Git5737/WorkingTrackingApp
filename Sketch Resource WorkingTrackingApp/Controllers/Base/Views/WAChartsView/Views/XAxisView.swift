//
//  YAxisView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 30.08.2025.
//

import UIKit

final class XAxisView: WABaseView {
    
    private let stackView: UIStackView = {
       let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        
        return view
    }()
    
    
    func configure(with data: [WAChartsView.Data]) {
        stackView.arrangedSubviews.forEach{
            $0.removeFromSuperview()
        }
        
        data.forEach{
            let label = UILabel()
            label.font = R.Fonts.helveticaRegualr(with: 9)
            label.textColor = R.Colors.inactive
            label.text = $0.title.uppercased()
            label.textAlignment = .center
            
            stackView.addArrangedSubview(label)
        }
    }
    
}


extension XAxisView{
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
       
    }
    
    override func configureApearence() {
        super.configureApearence()
        
        backgroundColor = .clear
    }
}

