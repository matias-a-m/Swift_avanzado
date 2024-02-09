//: [Previous](@previous)

import Foundation

/// Estructura genérica para representar una lista.
struct Lista<T> {
    /// Almacena los elementos en una matriz privada de tipo genérico.
    private var items: [T] = []

    /// Método para agregar un elemento a la lista.
    ///
    /// - Parameter item: El elemento a agregar a la lista.
    mutating func agregar(_ item: T) {
        items.append(item)
    }

    /// Método para filtrar elementos según una condición dada.
    ///
    /// - Parameter condicion: La condición utilizada para filtrar los elementos.
    /// - Returns: Un array que contiene los elementos que cumplen con la condición.
    func filtrar(_ condicion: (T) -> Bool) -> [T] {
        // Utiliza el método filter para obtener los elementos que cumplen con la condición.
        return items.filter(condicion)
    }
}

// Uso de Lista genérica con elementos de tipo Int.
var lista = Lista<Int>()

// Agrega números del 1 al 10 a la lista.
for i in 1...10 {
    lista.agregar(i)
}

// Filtra números pares de la lista.
let numerosPares = lista.filtrar { $0 % 2 == 0 }

// Imprime los números pares.
print("Números Pares: \(numerosPares)")
// Imprime: Números Pares: [2, 4, 6, 8, 10]


//: [Next](@next)
