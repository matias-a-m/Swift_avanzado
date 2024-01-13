//: [Previous](@previous)

import Foundation

// Actualiza el enum para incluir un nuevo caso de error
enum ValidationError: Error {
    case invalidName
    case invalidEmail
    case invalidPassword
    case passwordRequirementsNotMet
}

// Actualiza la estructura del formulario
struct RegistrationForm {
    var name: String
    var email: String
    var password: String
}

// Extiende la estructura para incluir las funciones de validación
extension RegistrationForm {
    func validateName() throws {
        guard !name.isEmpty else {
            throw ValidationError.invalidName
        }
    }

    func validateEmail() throws {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        guard emailPredicate.evaluate(with: email) else {
            throw ValidationError.invalidEmail
        }
    }

    func validatePassword() throws {
        // Verifica que la contraseña tenga al menos 6 caracteres, una minúscula, una mayúscula y un número
        let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{6,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        guard passwordPredicate.evaluate(with: password) else {
            throw ValidationError.passwordRequirementsNotMet
        }
    }
}

// Función para validar el formulario
func validateRegistrationForm(_ form: RegistrationForm) throws {
    try form.validateName()
    try form.validateEmail()
    try form.validatePassword()
}

// Función para manejar el registro
func registerUser(with form: RegistrationForm) {
    do {
        try validateRegistrationForm(form)
        // Si la validación es exitosa, puedes realizar el registro
        print("Registro exitoso para \(form.name) con correo electrónico \(form.email)")
    } catch let error {
        // Manejar errores de validación
        switch error {
        case ValidationError.invalidName:
            print("Error: Nombre no válido.")
        case ValidationError.invalidEmail:
            print("Error: Correo electrónico no válido.")
        case ValidationError.invalidPassword:
            print("Error: Contraseña no válida (debe tener al menos 6 caracteres, una minúscula, una mayúscula y un número).")
        case ValidationError.passwordRequirementsNotMet:
            print("Error: La contraseña no cumple con los requisitos mínimos de seguridad.")
        default:
            print("Error desconocido.")
        }
    }
}

// Caso de uso en un playground
let validForm = RegistrationForm(name: "John Doe", email: "john.doe@example.com", password: "Passw0rd")
registerUser(with: validForm)

let invalidForm = RegistrationForm(name: "", email: "invalid_email", password: "password")
registerUser(with: invalidForm)

//: [Next](@next)
