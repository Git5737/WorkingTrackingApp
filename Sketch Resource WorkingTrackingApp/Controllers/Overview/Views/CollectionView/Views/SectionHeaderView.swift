//
//  SectionHeaderView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 31.08.2025.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 13)
        label.textColor = R.Colors.inactive
        label.textAlignment = .center
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureApearence()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintViews()
        configureApearence()
    }
    
    func configure(with title: String) {
        self.title.text = title
    }
    
}

private extension SectionHeaderView {
    
    func setupViews(){
        
        setupView(title)
    }
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    func configureApearence() {
    }
}

