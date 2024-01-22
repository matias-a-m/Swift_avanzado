//: [Previous](@previous)

import Foundation

// Definición de una carta
struct Card {
    var rank: Int
    var suit: CardGame.Suit
}

// Definición de un juego de cartas
struct CardGame {
    
    // Enum para representar los palos de las cartas
    enum Suit: String, CaseIterable {
        case hearts, diamonds, clubs, spades
    }
    
    // Propiedades del juego de cartas
    var gameName: String
    var cards: [Card]
    
    // Método para barajar las cartas
    mutating func shuffleCards() {
        cards.shuffle()
    }
    
    // Método para imprimir las cartas del juego
    func printCards() {
        print("Cartas en el juego \(gameName):")
        for card in cards {
            print("- \(card.rank) de \(card.suit.rawValue)")
        }
    }
}

// Crear un juego de cartas y agregar algunas cartas
var pokerGame = CardGame(gameName: "Póker", cards: [])
for rank in 1...13 {
    for suit in CardGame.Suit.allCases {
        pokerGame.cards.append(Card(rank: rank, suit: suit))
    }
}

// Barajar las cartas y luego imprimir el estado del juego
pokerGame.shuffleCards()
pokerGame.printCards()



//: [Next](@next)
