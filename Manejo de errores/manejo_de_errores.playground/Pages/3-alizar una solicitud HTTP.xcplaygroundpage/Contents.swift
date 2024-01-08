//: [Previous](@previous)

import Foundation

// Enumerado para los posibles errores relacionados con HTTP
enum HTTPError: Error {
    case invalidURL
    case requestFailed(statusCode: Int)
    case networkError(error: Error)
}

// Función asíncrona para realizar una solicitud HTTP
func makeHTTPrequest() async {
    // Definir la URL de la solicitud
    guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
        print("URL inválida")
        return
    }

    // Crear la solicitud
    let request = URLRequest(url: url)

    // Utilizar async/await para realizar la solicitud HTTP
    do {
        // Utilizar async/await con data(for:)
        let (data, response) = try await URLSession.shared.data(for: request)

        // Verificar el código de estado de la respuesta HTTP
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw HTTPError.requestFailed(statusCode: (response as? HTTPURLResponse)?.statusCode ?? -1)
        }

        // Procesar los datos de la respuesta
        if let responseData = String(data: data, encoding: .utf8) {
            print("Solicitud exitosa. Datos recibidos: \(responseData)")
        } else {
            print("Error al procesar los datos recibidos")
        }

    } catch let error as NSError {
        // Capturar errores relacionados con la red o la solicitud
        print("Error de red: \(error.localizedDescription)")
    } catch let httpError as HTTPError {
        // Capturar errores específicos relacionados con HTTP
        switch httpError {
        case .invalidURL:
            print("URL inválida")
        case .requestFailed(let statusCode):
            print("La solicitud ha fallado con el código de estado: \(statusCode)")
        case .networkError(let error):
            print("Error de red: \(error.localizedDescription)")
        }
    } catch {
        // Capturar cualquier otro error inesperado
        print("Error inesperado: \(error.localizedDescription)")
    }
}

// Llamar a la función asíncrona utilizando Task
Task {
    await makeHTTPrequest()
}


//: [Next](@next)
