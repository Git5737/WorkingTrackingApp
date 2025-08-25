//
//  SessionController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView: BaseInfoView =  {
        let view = BaseInfoView(wiht: "Test", aligment: .center)
        
        return view
    }()
}

extension SessionController {
    override func addViews() {
        super.addViews()
      
        view.addView(timerView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = Resouces.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
    
    override func navBarLeftButtonHandleer() {
        print("Pause")
    }
    
    override func navBarRightButtonHandleer() {
        print("Finish")
    }
}

