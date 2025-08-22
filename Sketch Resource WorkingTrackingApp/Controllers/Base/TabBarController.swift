//
//  TabBarController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

enum Tabs: Int {
    case overivew
    case session
    case progres
    case settings
}

final class TabBarController: UITabBarController {
    
    private func configure() {
        tabBar.tintColor = Resouces.Colors.active
        tabBar.barTintColor = Resouces.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resouces.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progresswNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.overview , image: Resouces.Images.TabBar.overview, tag: Tabs.overivew.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.session , image: Resouces.Images.TabBar.session, tag: Tabs.session.rawValue)
        progresswNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.progress, image: Resouces.Images.TabBar.progress, tag: Tabs.progres.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.settings, image: Resouces.Images.TabBar.settings, tag: Tabs.settings.rawValue)
     
        setViewControllers([overviewNavigation, sessionNavigation, progresswNavigation, settingsNavigation], animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
   
}
