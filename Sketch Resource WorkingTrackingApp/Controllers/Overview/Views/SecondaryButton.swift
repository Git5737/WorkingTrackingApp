//
//  SecondaryButton.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 22.08.2025.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let lable = UILabel()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String?) {
        lable.text = title
    }
}

private extension SecondaryButton {
    func addViews() {
        addSubview(lable)
        addSubview(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        ])
    }
    
    func configure() {
        backgroundColor = Resouces.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textColor = Resouces.Colors.active
        lable.textAlignment = .center
        lable.font = Resouces.Fonts.helveticaRegualr(with: 15)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = Resouces.Images.Common.chevronDown?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resouces.Colors.active
    }
}
