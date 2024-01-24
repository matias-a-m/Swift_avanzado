import UIKit

// Define un protocolo llamado OptionalProtocol con un método
protocol OptionalProtocol {
    func printText() -> String
}

// Extinde el protocolo para proporcionar una implementación predeterminada
extension OptionalProtocol {
    func printText() -> String {
        return "Texto predeterminado"
    }
}

// Crea una clase que adopta el protocolo sin proporcionar su propia implementación
class MyImplementation: OptionalProtocol {
    // No implementamos printText aquí
}

// Crea una instancia de la clase y llama al método
let instance = MyImplementation()
let result = instance.printText()
print(result)  // Imprimirá "Texto predeterminado"
