//
//  TrainingCellView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 01.09.2025.
//

import UIKit

final class TrainingCellView: UICollectionViewCell {
    
    static let id = "TrainingCellView"
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 8
        
        return view
    }()
    
    private let checkMakrView: UIImageView = {
        let view = UIImageView()
        view.image = R.Images.Overview.checkmark
        
        return view
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 17)
        label.textColor = R.Colors.titleGray
        label.textAlignment = .left
        
        return label
    }()
    
    private let subtitle: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 12)
        label.textColor = R.Colors.inactive
        label.textAlignment = .left
        
        return label
    }()
    
    
    private let rightArrowView: UIImageView = {
        let view = UIImageView()
        view.image = R.Images.Overview.chevronRight
        
        return view
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
    
    func configure(with title: String, subtitle: String, isDone: Bool) {
        self.title.text = title
        self.subtitle.text = subtitle
        
        checkMakrView.image = isDone ? R.Images.Overview.checkmark : R.Images.Overview.circle
    }
    
}

private extension TrainingCellView {
    
    func setupViews(){
        
        setupView(checkMakrView)
        setupView(stackView)
        setupView(rightArrowView)
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(subtitle)
    }
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            checkMakrView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkMakrView.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkMakrView.heightAnchor.constraint(equalToConstant: 28),
            checkMakrView.widthAnchor.constraint(equalTo: checkMakrView.heightAnchor),
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: checkMakrView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: rightArrowView.leadingAnchor, constant: -15),
            
            rightArrowView.centerYAnchor.constraint(equalTo: centerYAnchor),
            rightArrowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            rightArrowView.heightAnchor.constraint(equalToConstant: 13),
            rightArrowView.widthAnchor.constraint(equalToConstant: 7),
            rightArrowView.leadingAnchor.constraint(equalTo: stackView.trailingAnchor)
        ])
    }
    
    func configureApearence() {
        backgroundColor = .white
        //layer.borderWidth = 1
        layer.borderColor = R.Colors.inactive.cgColor
    }
}

