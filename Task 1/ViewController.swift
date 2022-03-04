//
//  ViewController.swift
//  Task 1
//
//  Created by Iliya Mayasov on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redRoundLabel: UIView!
    @IBOutlet weak var yellowRoundLabel: UIView!
    @IBOutlet weak var greenRoundLabel: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    private var currentColor:  Color = .red
    private var lightOn: CGFloat = 1
    private var lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 10
        redRoundLabel.layer.cornerRadius = redRoundLabel.frame.width / 2
        yellowRoundLabel.layer.cornerRadius = yellowRoundLabel.frame.width / 2
        greenRoundLabel.layer.cornerRadius = greenRoundLabel.frame.width / 2
        
        redRoundLabel.alpha = 0.3
        yellowRoundLabel.alpha = 0.3
        greenRoundLabel.alpha = 0.3
    }

    @IBAction func changeColor() {
        nextButton.setTitle("NEXT", for: .normal)
        switch currentColor {
        case .red:
            greenRoundLabel.alpha = lightOff
            redRoundLabel.alpha = lightOn
            currentColor = .yellow
        case.yellow:
            redRoundLabel.alpha = lightOff
            yellowRoundLabel.alpha = lightOn
            currentColor = .green
        case.green:
            yellowRoundLabel.alpha = lightOff
            greenRoundLabel.alpha = lightOn
            currentColor = .red
        }
    }
}

extension ViewController {
    private enum Color {
        case red, yellow, green
    }
}

