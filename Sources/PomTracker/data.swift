//
//  data.swift
//  PomTracker
//
//  Created by Frank Lu on 1/5/2023.
//

import Foundation


struct Area: Codable, Equatable {
    var id: UUID
    var name: String

    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}

struct Project: Codable, Equatable {
    var id: UUID
    var areaId: UUID
    var name: String

    init(areaId: UUID, name: String) {
        self.id = UUID()
        self.areaId = areaId
        self.name = name
    }
}

struct Task: Codable, Equatable {
    var id: UUID
    var projectId: UUID
    var name: String

    init(projectId: UUID, name: String) {
        self.id = UUID()
        self.projectId = projectId
        self.name = name
    }
}

struct Pomodoro: Codable, Equatable {
    var id: UUID
    var taskId: UUID
    var startTime: Date
    var endTime: Date

    init(taskId: UUID, startTime: Date, endTime: Date) {
        self.id = UUID()
        self.taskId = taskId
        self.startTime = startTime
        self.endTime = endTime
    }
}

struct State {
    var areas: [Area] = []
    var projects: [Project] = []
    var tasks: [Task] = []
    var pomodoros: [Pomodoro] = []
    
    private let areasFilename = "areas.json"
    private let projectsFilename = "projects.json"
    private let tasksFilename = "tasks.json"
    private let pomodorosFilename = "pomodoros.json"
    
    init() {
        loadData(&areas, from: areasFilename)
        loadData(&projects, from: projectsFilename)
        loadData(&tasks, from: tasksFilename)
        loadData(&pomodoros, from: pomodorosFilename)
    }
    
    mutating func save() {
        saveData(areas, to: areasFilename)
        saveData(projects, to: projectsFilename)
        saveData(tasks, to: tasksFilename)
        saveData(pomodoros, to: pomodorosFilename)
    }
}
