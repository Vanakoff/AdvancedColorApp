//
//  SettingsViewController.swift
//  AdvancedColorApp
//
//  Created by Andrey Vanakoff on 03/09/2021.
//

import UIKit

class SettingsViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet var resultView: UIView!
    @IBOutlet var doneButton: UIButton!
    

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultView.layer.cornerRadius = 10
        doneButton.layer.cornerRadius = 5
        
        updateResultView()
    }

        
    //MARK: Actions
    @IBAction func updateResultView() {
        resultView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                             green: CGFloat(greenSlider.value),
                                             blue: CGFloat(blueSlider.value),
                                             alpha: 1)
    }
}

