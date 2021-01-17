//
//  ViewController.swift
//  DayNightClock
//
//  Created by Dragonborn on 17.01.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var currentImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        currentImageView.image = UIImage(named: "sun")
        timeLabel.text = getCurrentTime()
    }
    
    // Настраиваем UI
    private func setupUI() {
        timeLabel.layer.cornerRadius = 24
        timeLabel.layer.masksToBounds = true
    }

    // Функция вычисляет текущее время (в виде строки)
    private func getCurrentTime() -> String {
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let stringTimeDate = formatter.string(from: currentDate)
        return stringTimeDate
    }
}
