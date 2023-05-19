//
//  ViewController.swift
//  Counter
//
//  Created by Artur Khafizov on 14.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    private var countTrack: Int = 0
    
    @IBOutlet weak private var counterValueLabel: UILabel!
    @IBOutlet weak private var startCountingButton: UIButton!
    
    @IBOutlet weak private var historyTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCounterLabel()
        historyTextView.text = "История изменений:\n"
        view.addSubview(historyTextView)
    }
    
    private func logChange(action: String) {
        let currentDate = getCurrentDate()
        
        if action == "increment" {
            historyTextView.text += "\(currentDate): попытка увеличить, значение изменено на \(self.countTrack) + 1\n"
        }
        
        if action == "decrement" {
            if self.countTrack <= 0 {
                historyTextView.text += "\(currentDate): попытка уменьшить, значение счетчика ниже 0\n"
            } else {
                historyTextView.text += "\(currentDate): попытка уменьшить, значение изменено на \(self.countTrack) - 1\n"
            }
        }
        
        if action == "reset" {
            historyTextView.text += "\(currentDate): значение сброшено"
        }
        
    }
    
    @IBAction private func startCountingButton(_ sender: Any) {
        self.logChange(action: "increment")
        self.countTrack += 1
        self.updateCounterLabel()
    }
    
    @IBAction private func decrementCountingButton(_ sender: Any) {
        self.logChange(action: "decrement")
        
        if self.countTrack > 0 { //если больше 0, то уменьшаем
            self.countTrack -= 1
        } // чтобы не уходило меньше 0
        
        self.updateCounterLabel()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        self.logChange(action: "reset")
        self.countTrack = 0
        self.updateCounterLabel()
        
    }
    
    private func updateCounterLabel() {
        counterValueLabel.text = "Значение счетчика: \(countTrack)"
    }
    
    private func getCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yy, (HH:mm)"
        return dateFormatter.string(from: Date())
    }
}

