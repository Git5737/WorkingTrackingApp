//
//  SessionController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView = TimerView()
    
    private let timerDuration = 3.0
    
    override func navBarLeftButtonHandleer() {
        if timerView.state == .isStoped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRuning ? .isStoped : .isRuning
        
        setTitleNavBarButton(timerView.state == .isRuning ? Resouces.Strings.Session.navBarPause : Resouces.Strings.Session.navBarStart , at: .left)
    }
    
    override func navBarRightButtonHandleer() {
        timerView.stopTimer()
        timerView.state = .isStoped
        setTitleNavBarButton(Resouces.Strings.Session.navBarStart , at: .left)
    }
}

extension SessionController {
    override func addViews() {
        super.addViews()
      
        view.setupView(timerView)
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
        timerView.configure(wiht: timerDuration, progress: 0)
        
        addNavBarButton(at: .left, with: Resouces.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: Resouces.Strings.Session.navBarFinish)
    }
}

