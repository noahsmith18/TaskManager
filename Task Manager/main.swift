//
//  main.swift
//  Task Manager
//
//  Created by Noah Smith on 2/27/18.
//  Copyright © 2018 Noah Smith. All rights reserved.
//

import Foundation
/*
 Task Manager Assessment Guidelines
 Track: iOS
 Module: Swift
 Objectives
 User should be able to create new tasks.
 User should be able to see a list of all tasks (Completed and Uncompleted).
 User should be able to see a list of only uncompleted tasks.
 User should be able to see a list of only completed tasks.
 User should be able to mark a task complete.
 User should be able to delete a task.
 User should be able to exit the program.
 The program should display menu(s) listing all possible actions the user can take.
 The program should include error handling to account for incorrect user input.
 Each task should have:
 Title
 Due date
 Details of task
 */
var taskManager = true
func showOptions() {
    print("""
    Please select an option.
    1. Create a task.
    2. View tasks.
    3. Delete task.
    4. Make task complete
    5. Quit task manager.
    """)
}
var taskArray = [Task]()
func createTask () {
    print("What is the title of this task?")
    let taskName = readLine()!
    print("What do you have to do to complete this task?")
    let taskDetails = readLine()!
    let task = Task(title: taskName, details: taskDetails)
    taskArray.append(task)
    
}
func viewTask () {
    print("Which task do you want to view?")
    for task in taskArray {
        print(task.title)
    }
    
}

func taskComplete() {
    //List task to be completed
    print("Which task have you completed?")
    //Change the incomplete value
    let taskIncomplete = true
    
}

func deleteTask () {
    print("Which task do you want to delete?")
    let deleteTask = readLine()!
    for i in 0...taskArray.count - 1 {
        if taskArray[i].title == deleteTask {
            taskArray.remove(at: i)
        }
    }
}

while taskManager {
    showOptions()
    let select = readLine()!
    if select == "1" {
        createTask()
    } else if select == "2" {
        viewTask()
    } else if select == "3" {
        deleteTask()
    } else if select == "4" {
        taskComplete()
    } else if select == "5" {
        print("You have quit the task manager.")
        taskManager = false
    }
}


