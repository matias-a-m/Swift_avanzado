import UIKit

// Definición de la clase base Animal
class Animal {
    func emitirSonido() {
        print("El animal emite un sonido")
    }
}

// Subclase Perro que hereda de Animal
class Perro: Animal {
    func ladrar() {
        print("¡Guau! El perro ladra")
    }
}

// Subclase Gato que hereda de Animal
class Gato: Animal {
    func maullar() {
        print("¡Miau! El gato maulla")
    }
}

// Ejemplo de upcasting: Tratando a un Perro como un Animal
let miPerro: Animal = Perro()
miPerro.emitirSonido() // Salida: "¡Guau! El perro ladra"
//miPerro.ladrar() // Esto causará un error de compilación, ya que emitirSonido() es la única función accesible

// Ejemplo de upcasting: Tratando a un Gato como un Animal
let miGato: Animal = Gato()
miGato.emitirSonido() // Salida: "¡Miau! El gato maulla"
//miGato.maullar() // Esto causará un error de compilación, ya que emitirSonido() es la única función accesible



// Ejemplo de downcasting: Verifica y utiliza un Perro desde un Animal
if let perroReal = miPerro as? Perro {
    perroReal.ladrar() // Salida: "¡Guau! El perro ladra"
} else {
    print("La conversión a Perro no fue exitosa.")
}

// Ejemplo de downcasting: Verifica y utiliza un Gato desde un Animal
if let gatoReal = miGato as? Gato {
    gatoReal.maullar() // Salida: "¡Miau! El gato maulla"
} else {
    print("La conversión a Gato no fue exitosa.")
}
