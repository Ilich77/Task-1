//
//  ViewController.swift
//  Task 1
//
//  Created by Iliya Mayasov on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    private var status = true
    
    private enum Colors {
        case red
        case yellow
        case green
    }
    
    private var currentColor = Colors.red
    
    @IBOutlet weak var redRoundLabel: UIView!
    @IBOutlet weak var yellowRoundLabel: UIView!
    @IBOutlet weak var greenRoundLabel: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 10
        redRoundLabel.layer.cornerRadius = 50
        yellowRoundLabel.layer.cornerRadius = 50
        greenRoundLabel.layer.cornerRadius = 50
        
        redRoundLabel.alpha = 0.3
        yellowRoundLabel.alpha = 0.3
        greenRoundLabel.alpha = 0.3
    }

    @IBAction func changeColor() {
        nextButton.setTitle("NEXT", for: .normal)
        switch currentColor {
        case .red:
            greenRoundLabel.alpha = 0.3
            redRoundLabel.alpha = 1
            currentColor = Colors.yellow
        case.yellow:
            redRoundLabel.alpha = 0.3
            yellowRoundLabel.alpha = 1
            currentColor = Colors.green
        case.green:
            yellowRoundLabel.alpha = 0.3
            greenRoundLabel.alpha = 1
            currentColor = Colors.red
        }
    }
    
}

