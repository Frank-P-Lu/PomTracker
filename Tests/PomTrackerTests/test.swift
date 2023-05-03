@testable import PomTracker
import Foundation

func getStateFixture () -> State {
    // Sample Areas
    let workArea = Area(name: "Work")
    let personalArea = Area(name: "Personal")
    let healthArea = Area(name: "Health")
    
    let areas: [Area] = [workArea, personalArea, healthArea]
    
    // Sample Projects
    let websiteProject = Project(areaId: workArea.id, name: "Website Development")
    let reportProject = Project(areaId: workArea.id, name: "Monthly Report")
    let exerciseProject = Project(areaId: healthArea.id, name: "Exercise Routine")
    let hobbyProject = Project(areaId: personalArea.id, name: "Guitar Lessons")
    
    let projects: [Project] = [websiteProject, reportProject, exerciseProject, hobbyProject]
    
    // Sample Tasks
    let fixBugsTask = Task(projectId: websiteProject.id, name: "Fix CSS Bugs")
    let writeContentTask = Task(projectId: websiteProject.id, name: "Write Home Page Content")
    let analyzeDataTask = Task(projectId: reportProject.id, name: "Analyze Sales Data")
    let cardioTask = Task(projectId: exerciseProject.id, name: "Cardio Workout")
    let learnChordsTask = Task(projectId: hobbyProject.id, name: "Learn New Chords")
    
    let tasks: [Task] = [fixBugsTask, writeContentTask, analyzeDataTask, cardioTask, learnChordsTask]
    
    // Sample Pomodoros
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
    
    let pomodoro1 = Pomodoro(taskId: fixBugsTask.id, startTime: dateFormatter.date(from: "2023/05/01 09:00")!, endTime: dateFormatter.date(from: "2023/05/01 09:25")!)
    let pomodoro2 = Pomodoro(taskId: analyzeDataTask.id, startTime: dateFormatter.date(from: "2023/05/01 10:00")!, endTime: dateFormatter.date(from: "2023/05/01 10:25")!)
    let pomodoro3 = Pomodoro(taskId: cardioTask.id, startTime: dateFormatter.date(from: "2023/05/01 18:00")!, endTime: dateFormatter.date(from: "2023/05/01 18:25")!)
    
    let pomodoros: [Pomodoro] = [pomodoro1, pomodoro2, pomodoro3]
    
    
    var state = State()
    state.areas = areas
    state.projects = projects
    state.tasks = tasks
    state.pomodoros = pomodoros
    return state
}

