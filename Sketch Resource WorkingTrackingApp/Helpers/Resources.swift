//
//  Resouces.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 21.08.2025.
//

import UIKit

enum R {
    
    enum Colors {
        static let active = UIColor.systemBlue
        static let inactive = UIColor.systemGray
        
        static let background = UIColor(hex: "#F8F9F9FF")
        static let separator = UIColor.gray
        static let secondary = UIColor(hex: "#F0F3FFFF")
        
        static let titleGray = UIColor.black
        static let subtitleGray = UIColor(hex: "#D8D8D8FF")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
        
        enum NavBar {
            static let overview = "Overview"
            static let session = "Hgith Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWarcoutsButton = "All workouts"
        }
        
        enum Session {
            static let navBarStart = "Start    "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            
            static let completion = "COMPLETION"
            static let remaining = "REMAINING"
        }
        
        enum Progres {
            
        }
        
        enum Settings {}
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(systemName: "house")
            static let session = UIImage(systemName: "alarm")
            static let progress = UIImage(systemName: "chart.bar.xaxis")
            static let settings = UIImage(systemName: "gear")
        }
        
        enum Common {
            static let chevronDown = UIImage(systemName: "chevron.down")
            static let add = UIImage(systemName: "plus.circle")
        }
    }
    
    enum Fonts {
        static func helveticaRegualr(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}
