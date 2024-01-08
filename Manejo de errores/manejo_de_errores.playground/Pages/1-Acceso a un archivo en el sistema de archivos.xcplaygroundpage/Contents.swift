import Foundation

func leerArchivo() {
    let nombreArchivo = "ejemplo.txt"
    
    do {
        // Obtiene la URL del directorio de documentos en el sistema de archivos del Playground
        if let directorioDocumentos = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            // Construye la URL completa del archivo
            let urlArchivo = directorioDocumentos.appendingPathComponent(nombreArchivo)
            
            // Lee el contenido del archivo
            let contenido = try String(contentsOf: urlArchivo, encoding: .utf8)
            
            // Imprime el contenido leído
            print("Contenido del archivo:")
            print(contenido)
            
        } else {
            // No se pudo obtener el directorio de documentos
            print("Error: No se pudo acceder al directorio de documentos.")
        }
    } catch let error {
        // Maneja el error al leer el archivo
        print("Error al leer el archivo: \(error.localizedDescription)")
    }
}

// Llama a la función para leer el archivo
leerArchivo()

//: [Next](@next)
