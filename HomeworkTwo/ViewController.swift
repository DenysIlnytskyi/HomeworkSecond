//
//  ViewController.swift
//  HomeworkTwo
//
//  Created by Денис Ільницький on 13/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var valueOfRedSlider: UILabel!
    @IBOutlet var valueOfGreenSlider: UILabel!
    @IBOutlet var valueOfBlueSlider: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        valueOfRedSlider.text = String(format: "%.2f", redSlider.value)
        valueOfGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueOfBlueSlider.text = String(format: "%.2f", blueSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    
    }
    @IBAction func mixSliderValue(_ sender: UIColor) {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    
        valueOfRedSlider.text = String(format: "%.2f", redSlider.value)
        valueOfGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueOfBlueSlider.text = String(format: "%.2f", blueSlider.value)
    }
    

}

