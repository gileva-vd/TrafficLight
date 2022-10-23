//
//  ViewController.swift
//  TrafficLight
//
//  Created by Валерия Гилева on 23.10.2022.
//

import UIKit

enum ColorLigth {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLigthView: UIView!
    @IBOutlet var yellowLigthView: UIView!
    @IBOutlet var greenLigthView: UIView!
    @IBOutlet var commonButton: UIButton!
    
    private let ligthIsOn: CGFloat = 1.0
    private let ligthIsOff: CGFloat = 0.3
    private var colorLigth = ColorLigth.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commonButton.layer.cornerRadius = 7
        redLigthView.alpha = ligthIsOff
        yellowLigthView.alpha = ligthIsOff
        greenLigthView.alpha = ligthIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redLigthView.layer.cornerRadius =
            redLigthView.frame.width / 2
        yellowLigthView.layer.cornerRadius =
            yellowLigthView.frame.width / 2
        greenLigthView.layer.cornerRadius =
            greenLigthView.frame.width / 2
    }
    
    @IBAction func commonButtonTapped() {
        commonButton.setTitle("NEXT", for:.normal)
        
        switch colorLigth {
        case .red:
            greenLigthView.alpha = ligthIsOff
            redLigthView.alpha = ligthIsOn
            colorLigth = .yellow
        case .yellow:
            redLigthView.alpha = ligthIsOff
            yellowLigthView.alpha = ligthIsOn
            colorLigth = .green
        case .green:
            yellowLigthView.alpha = ligthIsOff
            greenLigthView.alpha = ligthIsOn
            colorLigth = .red
        }
    }
    
}

