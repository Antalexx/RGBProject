//
//  ViewController.swift
//  RGBProject
//
//  Created by Alexander Antonenko on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redCount: UILabel!
    @IBOutlet weak var blueCount: UILabel!
    @IBOutlet weak var greenCount: UILabel!
    @IBOutlet weak var alphaCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func changeColor() {
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }

    @IBAction func rSlderChanged(_ sender: UISlider) {
        redCount.text = String(format: "%.2f", redSlider.value)
        changeColor()
    }
    
    @IBAction func gSliderChnged(_ sender: UISlider) {
        greenCount.text = String(format: "%.2f", greenSlider.value)
        changeColor()
    }
    
    @IBAction func bSliderChanged(_ sender: UISlider) {
        blueCount.text = String(format: "%.2f", blueSlider.value)
        changeColor()
    }
    
    @IBAction func aSliderChanged(_ sender: UISlider) {
        alphaCount.text = String(format: "%.2f", alphaSlider.value)
        changeColor()
    }
    
    
}

