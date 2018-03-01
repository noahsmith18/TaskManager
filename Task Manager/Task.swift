//
//  Task.swift
//  Task Manager
//
//  Created by Noah Smith on 2/27/18.
//  Copyright © 2018 Noah Smith. All rights reserved.
//

import Foundation

class Task {
    var title: String
    var details: String
    var taskIncomplete = false
    init(title: String, details: String) {
        self.title = title
        self.details = details
    }
}

