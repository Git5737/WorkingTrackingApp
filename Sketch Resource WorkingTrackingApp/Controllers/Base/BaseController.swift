//
//  BaseController.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 22.08.2025.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constaintView()
        configureAppearance()
    }
}

@objc extension BaseController {
    func setupViews() {}
    
    func constaintView() {}
    
    func configureAppearance() {
        view.backgroundColor = R.Colors.background
    }
    
    func navBarLeftButtonHandleer() {
        print("NavBar left button")
    }
    
    func navBarRightButtonHandleer() {
        print("NavBar right button")
    }
}

extension BaseController {
    func addNavBarButton(at position: NavBarPosition,  with title: String){
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegualr(with: 17)
      
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandleer), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandleer), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
    func setTitleNavBarButton(_ title: String, at position: NavBarPosition){
        switch position {
        case .left:
            (navigationItem.leftBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        case .right:
            (navigationItem.leftBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        }
        
        navigationController?.view.layoutSubviews()
    }
}
