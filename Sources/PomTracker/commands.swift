//
//  File.swift
//  
//
//  Created by Frank Lu on 3/5/2023.
//

import Foundation
import Guaka

let addCommand = Command(
    usage: "add",
    shortMessage: "Add Pomodoro sessions quickly",
    longMessage: "Quickly add a specified number of Pomodoro sessions with the provided details.",
    flags: [
        Flag(shortName: "a", longName: "area", type: String.self, description: "The area to add the Pomodoro sessions to", required: true),
        Flag(shortName: "n", longName: "number",  type: Int.self, description: "The number of Pomodoro sessions to add"),
        Flag(shortName: "p", longName: "project", type: String.self, description: "The project the Pomodoro sessions belong to"),
        Flag(shortName: "t", longName: "task", type: String.self, description: "The task for which the Pomodoro sessions were completed"),
        Flag(shortName: "d", longName: "date", type: String.self, description: "The date when the Pomodoro sessions were completed"),
        Flag(shortName: "u", longName: "duration", type: Int.self, description: "The duration of each Pomodoro session in minutes")
    ])
{ (flags, args ) in
    guard let area = flags.getString(name: "area") else {
        print("Invalid arguments.")
        return
    }
    
    // Retrieve the additional options if provided
    let numberOfSessions = flags.getInt(name: "number")
    let project = flags.getString(name: "project")
    let task = flags.getString(name: "task")
    let date = flags.getString(name: "date")
    let duration = flags.getInt(name: "duration")
    
    // Add the specified number of Pomodoro sessions to the given area with the provided details
    // ...
    
    print("Added \(numberOfSessions) Pomodoro sessions to area '\(area)'.")
}


let rootCommand = Command(
    usage: "pom",
    shortMessage: "PomTracker Command Line Interface",
    longMessage: "PomTracker is a command-line tool for tracking Pomodoro sessions, projects, and tasks. Use the available subcommands to manage your data."
)


