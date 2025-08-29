//
//  WABarView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 29.08.2025.
//

import UIKit



extension WABarView {
    struct Data {
        let value: String
        let heightMultiplier: Double
        let title: String
    }
}

final class WABarView: WABaseView {
    
    private let heightMultiplier: Double
    
    private let valueLable: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 13)
        label.textColor = R.Colors.active
            
        return label
    }()
    
    private let barView: UIView = {
        let view = UIView()
        view.backgroundColor = R.Colors.active
        view.layer.cornerRadius = 2.5
        
        return view
    }()
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 9)
        label.textColor = R.Colors.inactive
            
        return label
    }()
    
    init(data: Data) {
        self.heightMultiplier = data.heightMultiplier
        super.init(frame: .zero)
        
        valueLable.text = data.value
        titleLable.text = data.title
    }
    
    required init?(coder: NSCoder) {
        self.heightMultiplier = 0
        super.init(frame: .zero)
    }
    
    func configure(with data: [String]) {
       
    }
}


extension WABarView{
    override func setupViews() {
        super.setupViews()
        
        setupView(valueLable)
        setupView(barView)
        setupView(titleLable)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            valueLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            valueLable.heightAnchor.constraint(equalToConstant: 10),
            
            barView.topAnchor.constraint(equalTo: valueLable.bottomAnchor, constant: 7),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightMultiplier * 0.8),
            
            titleLable.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10),
            titleLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLable.heightAnchor.constraint(equalToConstant: 10)
             
        ])
       
    }
    
    override func configureApearence() {
        super.configureApearence()
        
        backgroundColor = .clear
    }
}
