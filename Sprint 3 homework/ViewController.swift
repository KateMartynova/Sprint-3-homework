//
//  ViewController.swift
//  Sprint 3 homework
//
//  Created by Anna Makeeva on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var StatsUITextView: UITextView!
    
    var number: Int = 0
    
    func printMyDate() -> String {
        let mytime = Date();
        let dateFormatter = DateFormatter();
        dateFormatter.timeStyle = .short
        dateFormatter.dateStyle = .short
        return dateFormatter.string(from: mytime)
    }
    
    
    @IBOutlet weak var counter: UILabel!
    
    @IBAction func counterPlusUIButton(_ sender: Any) {
        number += 1
        counter.text = "Значение счетчика: \(number)"
        StatsUITextView.text += "\n\(printMyDate()): значение изменено на +1"
    }
    
    @IBAction func counterMinusUIButton(_ sender: Any) {
        if number > 0 {
            number -= 1
            StatsUITextView.text += "\n\(printMyDate()): значение изменено на -1"
        } else {
            number = 0
            StatsUITextView.text += "\n\(printMyDate()): попытка уменьшить значение счётчика ниже 0"
        }
        counter.text = "Значение счетчика: \(number)"
    }
    
    @IBAction func counterZeroUIButton(_ sender: Any) {
        number = 0
        counter.text = "Значение счетчика: \(number)"
        StatsUITextView.text += "\n\(printMyDate()): значение сброшено"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

