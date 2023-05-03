//
//  main.swift
//  PomTracker
//
//  Created by Frank Lu on 1/5/2023.
//

import Foundation

// Loads data
var state = State()

rootCommand.add(subCommands: [addCommand])

rootCommand.execute()
