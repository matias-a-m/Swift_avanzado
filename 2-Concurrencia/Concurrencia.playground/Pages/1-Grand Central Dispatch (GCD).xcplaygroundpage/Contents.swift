import Foundation
import PlaygroundSupport

// Establecemos un tiempo de ejecución más largo para que las tareas tengan tiempo suficiente
PlaygroundPage.current.needsIndefiniteExecution = true

// Creamos una cola global en segundo plano
let backgroundQueue = DispatchQueue.global(qos: .background)

// Tarea 1: Descargar datos en segundo plano
backgroundQueue.async {
    print("Tarea 1: Descargando datos en segundo plano...")
    
    // Simulamos una tarea que lleva tiempo
    sleep(3)
    
    print("Tarea 1: Descarga de datos completada.")
}

// Tarea 2: Procesar datos en segundo plano
backgroundQueue.async {
    print("Tarea 2: Procesando datos en segundo plano...")
    
    // Simulamos otra tarea que lleva tiempo
    sleep(2)
    
    print("Tarea 2: Procesamiento de datos completado.")
    
    // Una vez que ambas tareas en segundo plano han terminado, actualizamos la interfaz de usuario en el hilo principal
    DispatchQueue.main.async {
        print("Ambas tareas en segundo plano han terminado. Actualizando la interfaz de usuario.")
        
        // Aquí podrías realizar acciones como actualizar etiquetas, vistas, etc.
        
        // Finalizamos la ejecución del playground después de que todo esté completado
        PlaygroundPage.current.finishExecution()
    }
}





//: [Next](@next)
