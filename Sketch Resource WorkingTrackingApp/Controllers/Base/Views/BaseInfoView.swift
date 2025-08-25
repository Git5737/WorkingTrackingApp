//
//  BaseInfoView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 25.08.2025.
//

import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resouces.Fonts.helveticaRegualr(with: 13)
        label.textColor = Resouces.Colors.inactive
        return label
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resouces.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    
    init(wiht title: String? = nil, aligment: NSTextAlignment = .left) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = aligment
        
        super.init(frame: .zero)
    }
    
    @MainActor required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
}

extension BaseInfoView{
    override func setupViews() {
        super.setupViews()
        
        addView(titleLabel)
        addView(contentView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
        
        backgroundColor = .clear
    }
}

