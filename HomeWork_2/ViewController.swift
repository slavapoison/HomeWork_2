//
//  ViewController.swift
//  HomeWork_2
//
//  Created by Вячеслав Шангин on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewColor: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBAction func redSliderAction() {
        changeColor()
        redValueLabel.text = String(redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        changeColor()
        greenValueLabel.text = String(greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        changeColor()
        blueValueLabel.text = String(blueSlider.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func changeColor() {
        ViewColor.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: CGFloat(1))
    }

}

