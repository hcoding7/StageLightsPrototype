//
//  ViewController4.swift
//  StageLightsPrototype
//
//  Created by TRC Lab User on 7/18/19.
//  Copyright © 2019 TRC Lab User. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Things To Send Pt1 Begin
    var CueTitle = ""
    var Timestamp = ""
    var CueNotes = ""
    var BackgroundColor = ""
    var Light1 = "100"
    var Light2 = "100"
    var Light3 = "100"
    var Light4 = "100"
    var Light5 = "100"
    var Light6 = "100"
    var Light7 = "100"
    var Light8 = "100"
    var Light9 = "100"
    //Things to Send Pt1 End
    var Index = 0
    
    func indexChecker (index:Int) {
        if index == 1 {
            Light1 = intensityText.text!
            if  Light1 >= "100"  {
                Light1 = "100"
            }
            lightOne.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightOne.alpha == 0 {
                lightOne.alpha = 0.1
            }
        }
        else if index == 2 {
            Light2 = intensityText.text!
            if  Light2 >= "100"  {
                Light2 = "100"
            }

            lightTwo.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightTwo.alpha == 0 {
                lightTwo.alpha = 0.1
            }
        }else if index == 3 {
            Light3 = intensityText.text!
            if  Light3 >= "100"  {
                Light3 = "100"
            }
            lightThree.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightThree.alpha == 0 {
                lightThree.alpha = 0.1
            }
        }else if index == 4 {
            Light4 = intensityText.text!
            if  Light4 >= "100"  {
                Light4 = "100"
            }

            lightFour.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightFour.alpha == 0 {
                lightFour.alpha = 0.1
            }
        }else if index == 5 {
            Light5 = intensityText.text!
            if  Light5 >= "100"  {
                Light5 = "100"
            }

            lightFive.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightFive.alpha == 0 {
                lightFive.alpha = 0.1
            }
        }else if index == 6 {
            Light6 = intensityText.text!
            if  Light6 >= "100"  {
                Light6 = "100"
            }
            lightSix.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightSix.alpha == 0 {
                lightSix.alpha = 0.1
            }
        }else if index == 7 {
            Light7 = intensityText.text!
            if  Light7 >= "100"  {
                Light7 = "100"
            }

            lightSeven.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightSeven.alpha == 0 {
                lightSeven.alpha = 0.1
            }
        }else if index == 8 {
            Light8 = intensityText.text!
            if  Light8 >= "100"  {
                Light8 = "100"
            }

            lightEight.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightEight.alpha == 0 {
                lightEight.alpha = 0.1
            }
        }else if index == 9 {
            Light9 = intensityText.text!
            if  Light9 >= "100"  {
                Light9 = "100"
            }

            lightNine.alpha =  CGFloat(Double(intensityText.text!)!)/100
            if lightNine.alpha == 0 {
                lightNine.alpha = 0.1
            }
        }
    }
    
    @IBOutlet weak var lightOne: UIButton!
    @IBOutlet weak var lightTwo: UIButton!
    @IBOutlet weak var lightThree: UIButton!
    @IBOutlet weak var lightFour: UIButton!
    @IBOutlet weak var lightFive: UIButton!
    @IBOutlet weak var lightSix: UIButton!
    @IBOutlet weak var lightSeven: UIButton!
    @IBOutlet weak var lightEight: UIButton!
    @IBOutlet weak var lightNine: UIButton!
    
    
    @IBOutlet weak var backgroundColorText: UITextField!
    @IBOutlet weak var intensityText: UITextField!
    @IBOutlet weak var cueNoteText: UITextField!
    @IBOutlet weak var cueTitleText: UITextField!
    @IBOutlet weak var cueTimestampText: UITextField!
    @IBOutlet weak var lightNumberLabel: UILabel!
    
   
    @IBAction func cueNotesUpdate(_ sender: Any) {
        CueNotes = cueNoteText.text!
    }
    @IBAction func saveCueButton(_ sender: Any) {
        CueTitle = cueTitleText.text!
        Timestamp = cueTimestampText.text!
        CueNotes = cueNoteText.text!
        BackgroundColor = backgroundColorText.text!
    }
    
    @IBAction func light1Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 1
        intensityText.text = Light1
        lightNumberLabel.text = "Light #1"
    }
    
    @IBAction func light2Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 2
        intensityText.text = Light2
        lightNumberLabel.text = "Light #2"
    }
    
    @IBAction func light3Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 3
        intensityText.text = Light3
        lightNumberLabel.text = "Light #3"
    }
    
    @IBAction func light4Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 4
        intensityText.text = Light4
        lightNumberLabel.text = "Light #4"
    }
    
    @IBAction func light5Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 5
        intensityText.text = Light5
        lightNumberLabel.text = "Light #5"
    }
    
    @IBAction func light6Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 6
        intensityText.text = Light6
        lightNumberLabel.text = "Light #6"
    }
    
    @IBAction func light7Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 7
        intensityText.text = Light7
        lightNumberLabel.text = "Light #7"
    }
    @IBAction func light8Button(_ sender: Any) {
        indexChecker(index: Index)
        Index = 8
        intensityText.text = Light8
        lightNumberLabel.text = "Light #8"
    }
    
    @IBAction func light9Button(_ sender: Any) {
        
        indexChecker(index: Index)
        Index = 9
        intensityText.text = Light9
        lightNumberLabel.text = "Light #9"
    }
}
