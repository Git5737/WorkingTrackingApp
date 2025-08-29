//
//  SessionController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView = TimerView()
    private let statsView = StatsView(wiht: R.Strings.Session.workoutStats)
    private let stepsView = WABaseInfoView(wiht: R.Strings.Session.stepsCounter)
    
    private let timerDuration = 15.0
    
    override func navBarLeftButtonHandleer() {
        if timerView.state == .isStoped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRuning ? .isStoped : .isRuning
        
        setTitleNavBarButton(timerView.state == .isRuning ? R.Strings.Session.navBarPause : R.Strings.Session.navBarStart , at: .left)
    }
    
    override func navBarRightButtonHandleer() {
        timerView.stopTimer()
        timerView.state = .isStoped
        setTitleNavBarButton(R.Strings.Session.navBarStart , at: .left)
    }
}

extension SessionController {
    override func addViews() {
        super.addViews()
      
        view.setupView(timerView)
        view.setupView(statsView)
        view.setupView(stepsView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 11),
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7.5),
            
            stepsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 11),
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.session
        timerView.configure(wiht: timerDuration, progress: 0)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarFinish)
        
        timerView.callBack = { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                self?.navBarRightButtonHandleer()
            })
        }
        
        statsView.configure(with: [.hearRate(value: "155"),
                                   .averagePace(value: "8'20''"),
                                   .totoalDistance(value: "7,682"),
                                   .totalSteps(value: "12,345"),
                                  ])
    }
}

