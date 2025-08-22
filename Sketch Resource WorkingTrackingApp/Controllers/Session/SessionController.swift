//
//  SessionController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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

