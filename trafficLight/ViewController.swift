//
//  ViewController.swift
//  trafficLight
//
//  Created by Вероника Карпова on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 64
        yellowLight.layer.cornerRadius = 64
        greenLight.layer.cornerRadius = 64
        
        switchButton.layer.cornerRadius = 10
    }
    
    var currentSquare = 1

    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var switchButton: UIButton!
    
    @IBAction func switchButtonPressed(_ sender: UIButton) {

        switchButton.setTitle("NEXT", for: .normal)

            switch currentSquare {
            case 1:
                redLight.alpha = 1.0
                greenLight.alpha = 0.3
                currentSquare = 2
            case 2:
                yellowLight.alpha = 1.0
                redLight.alpha = 0.3
                currentSquare = 3
            case 3:
                greenLight.alpha = 1.0
                yellowLight.alpha = 0.3
                currentSquare = 1
            default:
                break
            }
        }
    
}

