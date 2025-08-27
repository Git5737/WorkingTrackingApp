//
//  SecondaryButton.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 22.08.2025.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {
    
    private var type : WAButtonType = .primary
    
    private let lable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
     
        lable.textAlignment = .center
      
        return lable
    }()
    
    private let iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = R.Images.Common.chevronDown?.withRenderingMode(.alwaysTemplate)
      
        return iconView
    }()
    
    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        addViews()
        layoutViews()
        configure()

    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    func setTitle(_ title: String?) {
        lable.text = title
    }
}

private extension WAButton {
    func addViews() {
        addSubview(lable)
        addSubview(iconView)
    }
    
    func layoutViews() {
        var horizontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 2),
        ])
    }
    
    func configure() {
        
        switch type {
        case .primary:
            lable.textColor = R.Colors.inactive
            lable.font = R.Fonts.helveticaRegualr(with: 13)
            iconView.tintColor = R.Colors.inactive

        case .secondary:
            backgroundColor = R.Colors.secondary
            layer.cornerRadius = 14
            lable.textColor = R.Colors.active
            lable.font = R.Fonts.helveticaRegualr(with: 15)
            iconView.tintColor = R.Colors.active
        }
        
        makeSystem(self)
    }
}
