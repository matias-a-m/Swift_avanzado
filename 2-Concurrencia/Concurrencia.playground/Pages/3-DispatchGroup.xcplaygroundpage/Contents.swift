//: [Previous](@previous)

import Foundation

// Crea un DispatchGroup
let myDispatchGroup = DispatchGroup()

// Función simulada que realiza una tarea asíncrona
func performAsyncTask(taskNumber: Int) {
    // Indica al DispatchGroup que estamos iniciando una tarea
    myDispatchGroup.enter()

    // Simula una tarea asíncrona
    DispatchQueue.global().async {
        print("Inicio de la tarea \(taskNumber)")
        sleep(UInt32(arc4random_uniform(5))) // Simulamos una operación que toma tiempo
        print("Fin de la tarea \(taskNumber)")

        // Indicamos al DispatchGroup que hemos completado la tarea
        myDispatchGroup.leave()
    }
}

// Realiza varias tareas asíncronas
for i in 1...3 {
    performAsyncTask(taskNumber: i)
}

// Espera hasta que todas las tareas se completen
myDispatchGroup.wait()

// Una vez que todas las tareas han finalizado, ejecuta esta acción
print("Todas las tareas se han completado. Ahora puedes realizar la siguiente acción.")



//: [Next](@next)
