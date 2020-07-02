//
//  DealerBrain.swift
//  YellowJack
//
//  Created by Michael Tang on 2020-06-30.
//  Copyright © 2020 Michael Tang. All rights reserved.
//

import UIKit
class DealerBrain {
    
    func generateDeckOfCards() -> [Card] {
        var myDeckOfCards: Array = [Card]()
        let maxRank = Card.Rank.ace.rawValue
        let aSuit:Array = [Card.Suit.Clubs.rawValue, Card.Suit.Diamonds.rawValue, Card.Suit.Hearts.rawValue, Card.Suit.Spades.rawValue]
        
        for count in 2...maxRank {
            for suit in aSuit {
                let aRank = Card.Rank.init(rawValue: count)
                let aSuit = Card.Suit.init(rawValue: suit)
             
                let myCard = Card(rank: aRank!, suit: aSuit!)
                myDeckOfCards.append(myCard)
            }
        }
        return myDeckOfCards
    }
    
    func cardsInfo(playingCard: Card) -> (String, String, (Int, Int?)) {
        let description = String(playingCard.rank.rawValue)
        let suit = playingCard.suit.rawValue
        let value = playingCard.rank.cardsValue()
        let card = (description,suit,value)
        return card

    }
   




    





}
