//
//  ViewController.swift
//  HomeWork_2.2
//
//  Created by Kravtsov Evgeniy on 23.05.2021.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabelValue: UILabel!

    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabelValue: UILabel!
    @IBOutlet weak var finalColorView: UIView!
    @IBOutlet weak var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redLabelValue.text = String(redSlider.value)
        greenLabelValue.text = String(greenSlider.value)
        blueLabelValue.text = String(blueSlider.value)
        
        updatefinalColorViewColor()

    }

    func updatefinalColorViewColor ()->Void {
        finalColorView.backgroundColor = UIColor(red: CGFloat((redSlider.value)), green: CGFloat((greenSlider.value)), blue: CGFloat((blueSlider.value)), alpha: 1.0)
    }

    @IBAction func redSliderHandler() {
        redLabelValue.text = String(Float(round(100*redSlider.value)/100))
        updatefinalColorViewColor()
    }
    
    @IBAction func greenSliderHandler() {
        greenLabelValue.text = String(Float(round(100*greenSlider.value)/100))
        updatefinalColorViewColor()
    }
    @IBAction func blueSliderHandler() {
        blueLabelValue.text = String(Float(round(100*blueSlider.value)/100))
        updatefinalColorViewColor()
    }
}

