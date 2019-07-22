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
    var CueTitle = ""
    var Timestamp = ""
    @IBOutlet weak var TimestampLabel: UILabel!
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var cueTitleText: UITextField!
    
    @IBOutlet weak var cueTimestampText: UITextField!
    @IBAction func cueTitleUpdate(_ sender: Any) {
        CueTitle = cueTitleText.text!
        TitleLabel.text = CueTitle
    }
    @IBAction func cueTimestampUpdate(_ sender: Any) {
        Timestamp = cueTimestampText.text!
       TimestampLabel.text = Timestamp
    }
    
}
