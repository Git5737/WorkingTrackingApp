//
//  ProgressController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformanceView = DailyPervormanceView(wiht: R.Strings.Progress.dailyPerformance, buttonTitle: R.Strings.Progress.last7Days)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProgressController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
    }
    
    override func constaintView() {
        super.constaintView()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [.init(value: "8k", heightMultiplier: 0.8, title: "MON"),
                                              .init(value: "7k", heightMultiplier: 0.7, title: "TEU"),
                                              .init(value: "5k", heightMultiplier: 0.5, title: "WEN"),
                                              .init(value: "6k", heightMultiplier: 0.6, title: "THU"),
                                              .init(value: "10k", heightMultiplier: 1, title: "FRI"),
                                              .init(value: "3k", heightMultiplier: 0.3, title: "SAT"),
                                              .init(value: "5k", heightMultiplier: 0.5, title: "SUN"),
        ])
    }
    
    override func navBarLeftButtonHandleer() {
        print("Export")
    }
    
    override func navBarRightButtonHandleer() {
        print("Details")
    }
}

