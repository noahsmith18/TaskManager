//
//  task.swift
//  Task Manager
//
//  Created by Noah Smith on 3/1/18.
//  Copyright © 2018 Noah Smith. All rights reserved.
//

import Foundation

class Task {
    var title: String
    var details: String
    var dueDate: String
    var taskComplete = false
    init(title: String, details: String, dueDate: String) {
        self.title = title
        self.details = details
        self.dueDate = dueDate
    }
}
