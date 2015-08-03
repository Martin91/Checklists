//
//  ViewController.swift
//  Checklists
//
//  Created by Martin Hong on 6/6/15.
//  Copyright (c) 2015 Martin Hong. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0text = "Walk the dog"
    var row1text = "Brush my teeth"
    var row2text = "Learn iOS development"
    var row3text = "Soccer practice"
    var row4text = "Eat ice cream"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem") as! UITableViewCell
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = row0text
        } else if indexPath.row % 5 == 1 {
            label.text = row1text
        } else if indexPath.row % 5 == 2 {
            label.text = row2text
        } else if indexPath.row % 5 == 3 {
            label.text = row3text
        } else if indexPath.row % 5 == 4 {
            label.text = row4text
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            } else {
                cell.accessoryType = .None
            }
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}
