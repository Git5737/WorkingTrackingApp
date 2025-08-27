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
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = R.Colors.separator.cgColor
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
        
        overviewNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.overview , image: R.Images.TabBar.overview, tag: Tabs.overivew.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.session , image: R.Images.TabBar.session, tag: Tabs.session.rawValue)
        progresswNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.progress, image: R.Images.TabBar.progress, tag: Tabs.progres.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: R.Strings.TabBar.settings, image: R.Images.TabBar.settings, tag: Tabs.settings.rawValue)
     
        setViewControllers([overviewNavigation, sessionNavigation, progresswNavigation, settingsNavigation], animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configure()
        swithcTo(tab: .session) // for testing
    }
    
    func swithcTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
   
}
