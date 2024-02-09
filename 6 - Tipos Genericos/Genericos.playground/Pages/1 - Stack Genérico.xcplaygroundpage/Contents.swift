import Foundation

/// Estructura genérica para representar una pila.
struct Stack<T> {
    /// Almacena los elementos en una matriz privada de tipo genérico.
    private var elements: [T] = []

    /// Método para agregar un elemento a la pila.
    ///
    /// - Parameter element: El elemento a agregar a la pila.
    mutating func push(_ element: T) {
        elements.append(element)
    }

    /// Método para quitar y devolver el último elemento de la pila.
    ///
    /// - Returns: El último elemento de la pila, o nil si la pila está vacía.
    mutating func pop() -> T? {
        return elements.popLast()
    }
}

// Uso del Stack genérico con tipo de elemento Int.
var stack = Stack<Int>()

// Agregar elementos a la pila.
stack.push(1)
stack.push(2)
stack.push(3)

// Imprimir el último elemento de la pila (LIFO: último en entrar, primero en salir).
print(stack.pop()) // Imprime: Optional(3)


//: [Next](@next)
