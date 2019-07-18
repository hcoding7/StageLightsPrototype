//
//  CueTableViewController.swift
//  StageLightsPrototype
//
//  Created by TRC Lab User on 7/16/19.
//  Copyright © 2019 TRC Lab User. All rights reserved.
//

import UIKit
struct Cue {
    
    var id : Int
    var title : String
    var text : String
    var subtitle: String
}
protocol CueCellDelegate: class {
    func didPressButton (_ tag:Int)
}
class CueTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cueTitle: UILabel!
    @IBOutlet weak var cueTimestamp: UILabel!
    @IBOutlet weak var cueInfo: UILabel!
    @IBOutlet weak var editCueButton: UIButton!
    
}
class CueTableViewController: UITableViewController {

   
    // MARK: - Table view data source
    var cues = [
        Cue(id: 1, title: "Lorem Ipsum", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", subtitle: "This is cell 1"),
        Cue(id: 2, title: "Aenean condimentum", text: "Ut eget massa erat. Morbi mauris diam, vulputate at luctus non.", subtitle:  "This is cell 2"),
        Cue(id: 3, title: "In ac ante sapien", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc." , subtitle: "This is cell 3"),
    ]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return cues.count
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CueCell", for: indexPath)
        as! CueTableViewCell
        let Cue = cues[indexPath.row]
      cell.cueInfo?.text = Cue.subtitle
        cell.cueTimestamp?.text = Cue.title
        cell.cueTitle?.text = Cue.text
        cell.editCueButton.tag = Cue.id
        return cell
    }

    
}
