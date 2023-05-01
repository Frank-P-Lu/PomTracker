//
//  io.swift
//  PomTracker
//
//  Created by Frank Lu on 1/5/2023.
//

import Foundation

func saveData<T: Codable>(_ data: [T], to filename: String) {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted

    do {
        let jsonData = try encoder.encode(data)
        let fileManager = FileManager.default
        let documentsDirectory = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let pomTrackerFolder = documentsDirectory.appendingPathComponent("PomTracker")
        try fileManager.createDirectory(at: pomTrackerFolder, withIntermediateDirectories: true, attributes: nil)
        let fileURL = pomTrackerFolder.appendingPathComponent(filename)

        try jsonData.write(to: fileURL)
    } catch {
        print("Error saving data: \(error)")
    }
}

func loadData<T: Codable>(from filename: String) -> [T]? {
    let fileManager = FileManager.default

    do {
        let documentsDirectory = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let pomTrackerFolder = documentsDirectory.appendingPathComponent("PomTracker")
        let fileURL = pomTrackerFolder.appendingPathComponent(filename)

        let loadedJSONData = try Data(contentsOf: fileURL)
        let decoder = JSONDecoder()

        let loadedData = try decoder.decode([T].self, from: loadedJSONData)
        return loadedData
    } catch {
        print("Error loading data: \(error)")
        return nil
    }
}
