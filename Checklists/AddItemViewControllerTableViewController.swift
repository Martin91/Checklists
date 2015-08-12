//
//  AddItemViewControllerTableViewController.swift
//  Checklists
//
//  Created by Martin Hong on 8/11/15.
//  Copyright (c) 2015 Martin Hong. All rights reserved.
//

import UIKit

class AddItemViewControllerTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView,
        willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {

        return nil
    }

    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
