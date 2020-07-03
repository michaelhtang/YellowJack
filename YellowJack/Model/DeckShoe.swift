            //
            //  DeckShoe.swift
            //  YellowJack
            //
            //  Created by Michael Tang on 2020-07-02.
            //  Copyright © 2020 Michael Tang. All rights reserved.
            //
            
            import Foundation
            
            struct Shoe {
                var cards: [Card]
                
                var decks: [Deck]
                
                
                init(_ numberOfDecks : Int) {
                    
                    cards = [Card]()
                    decks = [Deck]()
                    generateEmptyDeck(numberOfDecks)
                }
                
                mutating func generateEmptyDeck(_ numberOfDecks: Int) {
                    for _ in 1...numberOfDecks {
                        decks.append(Deck())
                    }
                    print(decks)
                    createDecks(decks)
                }
                
                func createDecks(_ decks: [Deck]) {
                    var deckIndex = decks.count - 1
                    while deckIndex != -1 {
                        for _ in 1...decks.count {
                            decks[deckIndex].generateDeckOfCards()
                            deckIndex -= 1
                        }
                        
                    }
                }
                
                func numberOfCards(in: Shoe) {
                    var deckIndex = 1
                       for _ in 1...decks.count {
                                 
                                 print("Cards in deck \(deckIndex): \(decks[deckIndex-1].cards.count)")
                                 deckIndex += 1
                             }
                }
                
                func cardsInfo(playingCard: Card) -> (String, String, (Int, Int?)) {
                    let description = String(playingCard.rank.rawValue)
                    let suit = playingCard.suit.rawValue
                    let value = playingCard.rank.cardsValue()
                    let card = (description,suit,value)
                    return card
                    
                }
                
                class Deck {
                    
                    var cards: [Card]
                    
                    init() {
                        self.cards = [Card]()
                    }
                    
                    func generateDeckOfCards()  {
                        
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
            
