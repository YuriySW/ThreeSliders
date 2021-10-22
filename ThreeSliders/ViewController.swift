//
//  ViewController.swift
//  ThreeSliders
//
//  Created by Yuriy  on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewOutlet: UIView!
    @IBOutlet var redSlider: UISlider! {
        didSet{
            redSlider.tintColor = UIColor.red
        }
    }
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!{
        didSet{
            greenSlider.tintColor = UIColor.green
        }
    }
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!{
        didSet{
            blueSlider.tintColor = UIColor.blue
        }
    }
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1.0
        redLabel.text = String(redSlider.value)
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1.0
        greenLabel.text = String(greenSlider.value)
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1.0
        blueLabel.text = String(blueSlider.value)
    }
    func changeColor(){
        viewOutlet.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func redSliderAction() {
        redLabel.text = String(redSlider.value)
    changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(greenSlider.value)
    changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(blueSlider.value)
    changeColor()
    }
    
}

