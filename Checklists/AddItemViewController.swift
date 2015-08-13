//
//  AddItemViewControllerTableViewController.swift
//  Checklists
//
//  Created by Martin Hong on 8/11/15.
//  Copyright (c) 2015 Martin Hong. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let oldText: NSString = textField.text
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        doneBarButton.enabled = (newText.length > 0)
        return true
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    override func tableView(tableView: UITableView,
        willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {

        return nil
    }

    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        println("Contents of the text field: \(textField.text)")
        dismissViewControllerAnimated(true, completion: nil)
    }
}
