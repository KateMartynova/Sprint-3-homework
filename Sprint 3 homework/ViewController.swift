//
//  ViewController.swift
//  Sprint 3 homework
//
//  Created by Anna Makeeva on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var number: Int = 0
    
    @IBOutlet weak private var counterLabel: UILabel!
    
    @IBOutlet weak private var statsUITextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    private func printMyDate() -> String {
        let mytime = Date();
        let dateFormatter = DateFormatter();
        dateFormatter.timeStyle = .short
        dateFormatter.dateStyle = .short
        return dateFormatter.string(from: mytime)
    }
    
    
    @IBAction private func counterPlusUIButton(_ sender: Any) {
        number += 1
        counterLabel.text = "Значение счетчика: \(number)"
        statsUITextView.text += "\n\(printMyDate()): значение изменено на +1"
    }
    
    @IBAction private func counterMinusUIButton(_ sender: Any) {
        if number > 0 {
            number -= 1
            statsUITextView.text += "\n\(printMyDate()): значение изменено на -1"
        } else {
            number = 0
            statsUITextView.text += "\n\(printMyDate()): попытка уменьшить значение счётчика ниже 0"
        }
        counterLabel.text = "Значение счетчика: \(number)"
    }
    
    @IBAction private func counterZeroUIButton(_ sender: Any) {
        number = 0
        counterLabel.text = "Значение счетчика: \(number)"
        statsUITextView.text += "\n\(printMyDate()): значение сброшено"
    }
}

