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
        
        // проверяем включен ли сейчас DarkMode
        // и в зависимости от текущего режима
        // устанавливаем картинку
//        if self.traitCollection.userInterfaceStyle == .dark {
//            currentImageView.image = UIImage(named: "moon")
//        } else {
//            currentImageView.image = UIImage(named: "sun")
//        }
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
    
    // Динамическая переменная, которая
    // возвращает цвет, в зависимости от
    // текущей темы
    private var currentThemeColor = UIColor {(traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        } else {
            return UIColor(red: 128, green: 22, blue: 250, alpha: 1.0)
        }
    }
    
}
