//
//  ProgressController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resouces.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }

    override func navBarLeftButtonHandleer() {
        print("Export")
    }
    
    override func navBarRightButtonHandleer() {
        print("Details")
    }
}

