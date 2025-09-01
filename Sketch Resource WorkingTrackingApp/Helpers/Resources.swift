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
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totolDisptance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stepsCounter = "Steps Counter"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Reset"
            
            static let dailyPerformance = "Daily performance"
            static let last7Days = "Last 7 days"
            static let monthlyPerformance = "Monthly performance"
            static let last10Monts = "Last 10 months"
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
        
        enum Overview {
            static let chevronRight = UIImage(systemName: "chevron.right")
            static let circle = UIImage(systemName: "dot.circle")
            static let checkmark = UIImage(systemName: "checkmark.circle")
        }
        
        enum Session {
            static let heart = UIImage(systemName: "heart")
            static let pace = UIImage(systemName: "space")
            static let step = UIImage(systemName: "figure.step.training")
            static let map = UIImage(systemName: "map")
        }
    }
    
    enum Fonts {
        static func helveticaRegualr(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}
