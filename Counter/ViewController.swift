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
    
    @IBOutlet weak var historyTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCounterLabel()
        historyTextView.text = "История изменений:\n"
        view.addSubview(historyTextView)
        
    }
    

    @IBAction private func startCountingButton(_ sender: Any) {
        self.countTrack += 1
        self.updateCounterLabel()
    }
    
    @IBAction func decrementCountingButton(_ sender: Any) {
        self.countTrack -= 1
        if countTrack < 0 {
            countTrack = 0
        }
        self.updateCounterLabel()
    }
    @IBAction func resetButton(_ sender: Any) {
        countTrack = 0
        self.updateCounterLabel()
let currentDate = getCurrentDate()
        historyTextView.text += "\(currentDate): значение сброшено"
        print(currentDate)
    }
    private func updateCounterLabel() {
        counterValueLabel.text = "Значение счетчика: \(countTrack)"
    }
    private func getCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yy, HH:mm"
        return dateFormatter.string(from: Date())
    }
}

