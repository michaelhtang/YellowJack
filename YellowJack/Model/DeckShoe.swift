    //
    //  DeckShoe.swift
    //  YellowJack
    //
    //  Created by Michael Tang on 2020-07-02.
    //  Copyright © 2020 Michael Tang. All rights reserved.
    //
    
    import Foundation
    
    class Shoe {
        var cards: [Card]
        var decks: [Deck]
        
        init(_ numberOfDecks : Int) {
            cards = [Card]()
            decks = [Deck]()
            generateDeck(numberOfDecks)
            combineDecks(decks)
        }
        
        func generateDeck(_ numberOfDecks: Int) {
            for _ in 1...numberOfDecks {
                decks.append(Deck())
            }
            //Debugging
            print("Deck Arrays")
            print(decks)
            
//            print("Cards inside Deck 0")
//            print(decks[0].cards)
//            print("Cards inside Deck 1")
//            print(decks[1].cards)
        }
        
        func combineDecks(_ decks: [Deck]) {
            for deck in decks {
                cards += deck.cards
            }
            //Debugging
//            print("Cards inside card shoe")
//            print(cards)
        }
        
        func numberOfCardsTotal(in: Shoe) {
            print("Total cards: \(cards.count)")
        }
        
        func numberOfCardsPerDeck(in: Shoe) {
            var deckIndex = 1
            for _ in 1...decks.count {
                
                print("Cards in deck \(deckIndex): \(decks[deckIndex-1].cards.count)")
                deckIndex += 1
            }
        }
        
        func cardsInfo(playingCard: Card) -> (String, String, (Int, Int?)) {
            let description = String(playingCard.rank.rankDescription())
            let suit = playingCard.suit.rawValue
            let value = playingCard.rank.cardsValue()
            let card = (description,suit,value)
            return card
            
        }
        
        
        class Deck {
            
            var cards: [Card]
            
            init() {
                self.cards = [Card]()
                generateDeckOfCards()
            }
            
            func generateDeckOfCards() {
                
                let maxRank = Card.Rank.ace.rawValue
                let aSuit:Array = [Card.Suit.Clubs.rawValue, Card.Suit.Diamonds.rawValue, Card.Suit.Hearts.rawValue, Card.Suit.Spades.rawValue]
                
                for count in 2...maxRank {
                    for suit in aSuit {
                        let aRank = Card.Rank.init(rawValue: count)
                        let aSuit = Card.Suit.init(rawValue: suit)
                        
                        let myCard = Card(rank: aRank!, suit: aSuit!)
                        cards.append(myCard)
                        
                    }
                }
                
                
            }
            
            
            
            
        }
        
        
    }
    
