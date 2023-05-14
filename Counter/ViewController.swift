//
//  ViewController.swift
//  Counter
//
//  Created by Artur Khafizov on 14.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    var countTrack: Int = 0
    
    @IBOutlet weak var counterValueLabel: UILabel!
    @IBOutlet weak var startCountingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterValueLabel.text = "Значение счетчика: \(countTrack)"
        startCountingButton.setTitle("+", for: .normal)
        
    }

    @IBAction func startCountingButton(_ sender: Any) {
            self.countTrack += 1
        counterValueLabel.text = "Значение счетчика: \(countTrack)"
        print(self.countTrack)
    }
    
  
}

