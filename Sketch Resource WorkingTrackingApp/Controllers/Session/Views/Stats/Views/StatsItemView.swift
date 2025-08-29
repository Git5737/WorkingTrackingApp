//
//  StatsItemView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 28.08.2025.
//

import UIKit

enum StatsItem {
    case hearRate(value: String)
    case averagePace(value: String)
    case totoalDistance(value: String)
    case totalSteps(value: String)
    
    var data: StatsItemView.ItemData {
        switch self {
        case .averagePace(let value):
            return .init(image: R.Images.Common.pace, value: value + " / km", title: R.Strings.Session.averagePace)
        case .hearRate(let value):
            return .init(image: R.Images.Common.heart, value: value + " bpm", title: R.Strings.Session.heartRate)
        case .totoalDistance(let value):
            return .init(image: R.Images.Common.map, value: value + " km", title: R.Strings.Session.totolDisptance)
        case .totalSteps(let value):
            return .init(image: R.Images.Common.step, value: value, title: R.Strings.Session.totalSteps)
        }
    }
}

final class StatsItemView: WABaseView {
    
    struct ItemData {
        let image: UIImage?
        let value: String
        let title: String
    }
    
    private let imageView: UIImageView = {
        let imgeView = UIImageView()
        imgeView.tintColor = R.Colors.inactive
        return imgeView
    }()
    
    private let valueLable: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 17)
        label.textColor = R.Colors.titleGray
            
        return label
    }()
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 10)
        label.textColor = R.Colors.inactive
            
        return label
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 2
        return stackView
    }()
    
    func confiture(wiht item: StatsItem) {
        imageView.image = item.data.image
        valueLable.text = item.data.value
        titleLable.text = item.data.title
    }
    
}

extension StatsItemView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        setupView(imageView)
        stackView.addArrangedSubview(valueLable)
        stackView.addArrangedSubview(titleLable)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 23),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
    }
}
