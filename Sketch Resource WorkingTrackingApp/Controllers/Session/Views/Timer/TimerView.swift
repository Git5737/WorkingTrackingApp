//
//  TimerView.swift
//  Sketch Resource WorkingTrackingApp
//
//  Created by mac on 25.08.2025.
//

import UIKit

enum TimerState {
    case isRuning
    case isPaused
    case isStoped
}

final class TimerView: WABaseInfoView {
    
    private let elapsedTimerLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 14)
        label.text = R.Strings.Session.elapsedTime
        label.textColor = R.Colors.inactive
        label.textAlignment = .center
        
        return label
    }()
    
    private let elapsedTimerValueLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 46)
        label.textColor = R.Colors.titleGray
        label.textAlignment = .center
        
        return label
    }()
    
    private let remainingTimerLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 13)
        label.text = R.Strings.Session.remainingTime
        label.textColor = R.Colors.inactive
        label.textAlignment = .center
        
        return label
    }()
    
    private let remainingTimerValueLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegualr(with: 13)
        label.textColor = R.Colors.titleGray
        label.textAlignment = .center
        
        return label
    }()
    
    private let timerStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 10
        
        return view
    }()
    
    private let bottomStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 25
        
        return view
    }()
    
    private let completedPercentView = PercentView()
    private let remainingPercentView = PercentView()
    
    private let bottomSeparetorView: UIView = {
        let view = UIView()
        view.backgroundColor = R.Colors.separator
        
        return view
    }()
    
    private let progressView = ProgresView()
    
    private var timer = Timer()
    private var timerProgress: CGFloat = 0
    private var timerDuration = 0.0
    
    public var state: TimerState = .isStoped
    var callBack: (() -> Void)?
    
    func configure(wiht duration: Double, progress: Double) {
        timerDuration = duration
        
        let tempCurrentValue = progress > duration ? duration : progress
        let goalValueDevider = duration == 0 ? 1 : duration
        let percent = tempCurrentValue / goalValueDevider
        let roundedPercent = Int(round(percent * 100))
        
        elapsedTimerValueLabel.text = getDisplayedString(from: Int(tempCurrentValue))
        remainingTimerValueLabel.text = getDisplayedString(from: Int(duration) - Int(tempCurrentValue))
        completedPercentView.configure(with: R.Strings.Session.completion, andValue: roundedPercent)
        remainingPercentView.configure(with: R.Strings.Session.remaining, andValue: 100 - roundedPercent)
        
        progressView.drawProgres(with: CGFloat(percent))
    }
    
    func startTimer() {
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01,
                                     repeats: true,
                                     block: { [weak self] timer in
            guard let self = self else { return }
            self.timerProgress += 0.01
            
            if self.timerProgress > self.timerDuration {
                self.timerProgress = self.timerDuration
                timer.invalidate()
                self.callBack?()
            }
            
            self.configure(wiht: self.timerDuration, progress: self.timerProgress)
        })
    }
    
    func pauseTimer() {
        timer.invalidate()
    }
    
    func stopTimer() {
        guard self.timerProgress > 0 else {return}
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01,
                                     repeats: true,
                                     block: { [weak self] timer in
            guard let self = self else { return }
            self.timerProgress -= self.timerDuration * 0.01
            
            if self.timerProgress <= 0 {
                self.timerProgress = 0
                timer.invalidate()
            }
            
            self.configure(wiht: self.timerDuration, progress: self.timerProgress)
        })
        
    }
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        
        setupView(progressView)
        setupView(timerStackView)
        setupView(bottomStackView)
        
        
        [
            elapsedTimerLabel,
            elapsedTimerValueLabel,
            remainingTimerLabel,
            remainingTimerValueLabel
        ].forEach {
            timerStackView.addArrangedSubview($0)
        }
        
        [
            completedPercentView,
            bottomSeparetorView,
            remainingPercentView
        ].forEach(bottomStackView.addArrangedSubview)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor),
            progressView.bottomAnchor.constraint(equalTo: bottomAnchor, constant:  -40),
            
            timerStackView.centerXAnchor.constraint(equalTo: progressView.centerXAnchor),
            timerStackView.centerYAnchor.constraint(equalTo: progressView.centerYAnchor),
            
            bottomStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -28),
            bottomStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            bottomStackView.heightAnchor.constraint(equalToConstant: 35),
            bottomStackView.widthAnchor.constraint(equalToConstant: 175),
            
            bottomSeparetorView.widthAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    override func configureApearence() {
        super.configureApearence()
    }
}

private extension TimerView {
    func getDisplayedString(from value: Int) -> String {
        let seconds = value % 60
        let minutes = ( value / 60) % 60
        let hours = value / 3600
        
        let secondsStr = seconds < 10 ? "0\(seconds)" : "\(seconds)"
        let minutesStr = minutes < 10 ? "0\(minutes)" : "\(minutes)"
        let hoursStr = hours < 10 ? "0\(hours)" : "\(hours)"
        
        return hours == 0
        ? [minutesStr, secondsStr].joined(separator: ":")
        : [hoursStr, minutesStr, secondsStr].joined(separator: ":")
    }
}
