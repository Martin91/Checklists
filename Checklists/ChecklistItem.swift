//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Martin Hong on 8/10/15.
//  Copyright (c) 2015 Martin Hong. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}