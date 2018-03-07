//
//  main.swift
//  Task Manager
//
//  Created by Noah Smith on 2/21/18.
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
    ********************************
    * Welcome to the Task Manager! *
    ********************************
    Please select an option.
    1. Create a task.
    2. View all tasks.
    3. Delete task.
    4. Make task complete.
    5. View complete tasks.
    6. View incomplete tasks.
    7. Quit task manager.
    """)
}
var taskArray = [Task]()
func createTask () {
    print("What's the title of your task?")
    let taskName = readLine()!
    print("Give a description of the task.")
    let taskDetails = readLine()!
    print("How many days before your task is due?")
    let taskDueDate = readLine()!
    print("Your task has been created! Press enter to return to the main menu.")
    let task = Task(title: taskName, details: taskDetails, dueDate: taskDueDate)
    taskArray.append(task)
}
func viewTask () {
    print("Which task do you want to view?")
    for task in taskArray {
        print(task.title)
    }
    
    
}

func deleteTask () {
    print("Which task do you want to delete?")
    let deleteTask = readLine()!
    for i in 0...taskArray.count - 1 {
        if taskArray[i].title == deleteTask {
            taskArray.remove(at: i)
            } else if taskArray.isEmpty {
        }
    }
}

func taskComplete() {
    //List task to be completed
    print("Which task have you completed?")
    //The task is selected by using a readLine function.
    let taskIncomplete = readLine()!
    //Loop through our array of tasks.
    for task in taskArray {
        //If the selected task is equal to the string it is then set to be completed.
        if task.title == taskIncomplete {
            //The task is then marked as complete by using a bool.
            task.taskComplete = true
            } else if  taskArray.isEmpty {
        }
    }
}

func viewCompleteTasks() {
    print("Here is a list of your completed tasks.")
    for task in taskArray {
        if task.taskComplete == true {
            print(task.title)
        }
    }
}
func viewIncompleteTasks() {
        print("Here is a list of your incomplete tasks.")
    for task in taskArray {
        if task.taskComplete == false {
            print(task.title)
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
        viewCompleteTasks()
    } else if select == "6" {
        viewIncompleteTasks()
    } else if select == "7" {
        print("You have quit the task manager.")
        taskManager = false
    } else if (readLine() != nil) {
        print("Error: Invalid input.")
    }
}
