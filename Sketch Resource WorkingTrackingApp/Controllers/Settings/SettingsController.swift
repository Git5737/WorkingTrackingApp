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
        
        title = R.Strings.NavBar.settings
        navigationController?.tabBarItem.title = R.Strings.TabBar.settings
    }
}

