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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateCounterLabel()
        startCountingButton.setTitle("+", for: .normal)
    }

    @IBAction private func startCountingButton(_ sender: Any) {
        self.countTrack += 1
        self.updateCounterLabel()
    }
    
    private func updateCounterLabel() {
        counterValueLabel.text = "Значение счетчика: \(countTrack)"
    }
}

