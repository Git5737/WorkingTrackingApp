//
//  OverviewNavBar.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 24.08.2025.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWrokoutsButton: WAButton = {
        let button = WAButton(with: .secondary)
        button.setTitle(Resouces.Strings.Overview.allWarcoutsButton)
        return button
    }()
    private let addButton = UIButton()
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBoarder(with: Resouces.Colors.separator, height: 1)
    }
    
    func addAllWrorkoutsAction(_ action: Selector, with target: Any?) {
        allWrokoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        allWrokoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        
        addView(titleLabel)
        addView(allWrokoutsButton)
        addView(addButton)
        addView(weekView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWrokoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWrokoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWrokoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWrokoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47),
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
        
        backgroundColor = .white
        //addBottomBoarder(with: Resouces.Colors.separator, height: 1) // not displayed correctly because the freame is not known, known in layoutSubview func
        
        // AutoMask is off on UIVIew + ext
        titleLabel.text = Resouces.Strings.NavBar.overview
        titleLabel.textColor = Resouces.Colors.titleGray
        titleLabel.font = Resouces.Fonts.helveticaRegualr(with: 22)
        
        //allWrokoutsButton.addTarget(self, action: #selector(allWorkoutsButtonAction), for: .touchUpInside)
        
        addButton.setImage(Resouces.Images.Common.add, for: .normal)
    }
}
