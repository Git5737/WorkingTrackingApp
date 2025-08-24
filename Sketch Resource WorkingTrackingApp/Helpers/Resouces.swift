//
//  Resouces.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

enum Resouces {
    
    enum Colors {
        static var active = UIColor.systemBlue
        static var inactive = UIColor.systemGray
        
        static var background = UIColor(hex: "#F8F9F9FF")
        static var separator = UIColor.gray
        static var secondary = UIColor(hex: "#F0F3FFFF")
        
        static var titleGray = UIColor.black
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
        enum NavBar {
            static var overview = "Overview"
            static var session = "Hgith Intensity Cardio"
            static var progress = "Workout Progress"
            static var settings = "Settings"
        }
        
        enum Overview {
            static var allWarcoutsButton = "All workouts"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(systemName: "house")
            static var session = UIImage(systemName: "alarm")
            static var progress = UIImage(systemName: "chart.bar.xaxis")
            static var settings = UIImage(systemName: "gear")
        }
        
        enum Common {
            static var chevronDown = UIImage(systemName: "chevron.down")
            static var add = UIImage(systemName: "plus.circle")
        }
    }
    
    enum Fonts {
        static func helveticaRegualr(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}
