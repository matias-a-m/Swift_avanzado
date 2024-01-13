//: [Previous](@previous)

import Foundation

// Paso 1: Crea una clase personalizada que herede de Operation

class MyOperation: Operation {
    private let operationName: String
    
    init(name: String) {
        self.operationName = name
        super.init()
    }
    
    override func main() {
        // Simulamos una tarea demorada
        sleep(2)
        print("\(operationName) completada")
    }
}

// Paso 2: Crea instancias de las operaciones

let operation1 = MyOperation(name: "Operación 1")
let operation2 = MyOperation(name: "Operación 2")

// Paso 3: Crea una OperationQueue y agregar las operaciones a la cola

let operationQueue = OperationQueue()

// Paso 4: Establece la dependencia entre las operaciones

operation2.addDependency(operation1)

// Paso 5: Agrega las operaciones a la cola

operationQueue.addOperation(operation1)
operationQueue.addOperation(operation2)

// El resultado esperado es que la "Operación 1" se ejecute primero, seguida de la "Operación 2" debido a la dependencia establecida.

// Paso 6: Espera a que todas las operaciones en la cola se completen

operationQueue.waitUntilAllOperationsAreFinished()



//: [Next](@next)
