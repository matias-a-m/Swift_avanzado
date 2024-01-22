//: [Previous](@previous)

import Foundation

// Definición de una lista de tareas
struct TaskList {
    
    // Enum para representar el estado de una tarea
    enum TaskStatus {
        case todo, inProgress, done
    }
    
    // Estructura para representar una tarea
    struct Task {
        var title: String
        var status: TaskStatus
    }
    
    // Propiedades de la lista de tareas
    var listTitle: String
    var tasks: [Task]
    
    // Método para agregar una tarea a la lista
    mutating func addTask(title: String, status: TaskStatus) {
        let newTask = Task(title: title, status: status)
        tasks.append(newTask)
    }
    
    // Método para imprimir el contenido de la lista de tareas
    func printTaskList() {
        print("Lista de tareas: \(listTitle)")
        for task in tasks {
            print("- \(task.title): \(task.status)")
        }
    }
}

// Crea una lista de tareas y agrega algunas tareas
var myTaskList = TaskList(listTitle: "Tareas Personales", tasks: [])
myTaskList.addTask(title: "Hacer la compra", status: .todo)
myTaskList.addTask(title: "Preparar la presentación", status: .inProgress)
myTaskList.addTask(title: "Hacer ejercicio", status: .done)

// Imprime la lista de tareas
myTaskList.printTaskList()


//: [Next](@next)
