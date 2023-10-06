//
//  ViewController.swift
//  trafficLight
//
//  Created by Вероника Карпова on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var topGrayCircle: UIView!
    @IBOutlet weak var middleGrayCircle: UIView!
    @IBOutlet weak var bottomGrayCircle: UIView!
    
    @IBOutlet weak var trafficLight: UIView!
    
    @IBOutlet weak var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        trafficLight.layer.cornerRadius = 50
        
        topGrayCircle.layer.cornerRadius = topGrayCircle.frame.size.width / 2
        middleGrayCircle.layer.cornerRadius = middleGrayCircle.frame.size.width / 2
        bottomGrayCircle.layer.cornerRadius = bottomGrayCircle.frame.size.width / 2
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
    }
    
    var currentLight = 1
    
    @IBAction func switchButtonPressed(_ sender: UIButton) {

        switchButton.setTitle("NEXT", for: .normal)

            switch currentLight {
            case 1:
                redLight.alpha = 1.0
                greenLight.alpha = 0.3
                currentLight = 2
            case 2:
                yellowLight.alpha = 1.0
                redLight.alpha = 0.3
                currentLight = 3
            case 3:
                greenLight.alpha = 1.0
                yellowLight.alpha = 0.3
                currentLight = 1
            default:
                break
            }
        }
    
}

