//
//  BaseView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 24.08.2025.
//

import UIKit

class BaseView: UIView {
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureApearence()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView{
    func setupViews() {
        
    }
    
    func constraintViews() {
        
    }
    
    func configureApearence() {
        backgroundColor = .white
    }
}
