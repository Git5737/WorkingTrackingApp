//
//  SettingsController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resouces.Strings.NavBar.settings
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.settings
    }
}

