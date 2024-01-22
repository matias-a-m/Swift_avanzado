//: [Previous](@previous)

import Foundation

// Definición de un artista musical
struct Artist {
    
    // Estructura para representar un álbum
    struct Album {
        var title: String
        var releaseYear: Int
    }
    
    // Propiedades del artista
    var name: String
    var genre: String
    var albums: [Album]
    
    // Método para imprimir la discografía del artista
    func printDiscography() {
        print("Discografía de \(name) (\(genre)):")
        for album in albums {
            print("- \(album.title) (\(album.releaseYear))")
        }
    }
}

// Crear un artista y agregar algunos álbumes
var myFavoriteArtist = Artist(name: "Taylor Swift", genre: "Pop", albums: [])
myFavoriteArtist.albums.append(Artist.Album(title: "1989", releaseYear: 2014))
myFavoriteArtist.albums.append(Artist.Album(title: "Red", releaseYear: 2012))
myFavoriteArtist.albums.append(Artist.Album(title: "Fearless", releaseYear: 2008))

// Imprimir la discografía del artista
myFavoriteArtist.printDiscography()


//: [Next](@next)
