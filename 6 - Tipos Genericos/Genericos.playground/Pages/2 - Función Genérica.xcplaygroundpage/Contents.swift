//: [Previous](@previous)

import UIKit

/// Función genérica para intercambiar valores.
///
/// - Parameters:
///   - a: Primer valor a intercambiar (inout).
///   - b: Segundo valor a intercambiar (inout).
func intercambiarValores<T>(_ a: inout T, _ b: inout T) {
    // Se utiliza una variable temporal para realizar el intercambio.
    let temp = a
    a = b
    b = temp
}

// Uso de la función genérica con tipos de datos Int.
var numero1 = 5
var numero2 = 10

// Llamada a la función para intercambiar los valores de las variables.
intercambiarValores(&numero1, &numero2)

// Imprime los valores después del intercambio.
print("Número 1: \(numero1), Número 2: \(numero2)")
// Imprime: Número 1: 10, Número 2: 5



//: [Next](@next)
