//
//  Card.swift
//  YellowJack
//
//  Created by Michael Tang on 2020-07-01.
//  Copyright © 2020 Michael Tang. All rights reserved.
//

import Foundation

struct Card{
    let rank: Rank
    let suit: Suit
    

        enum Rank: Int {
                case two = 2
                case three, four, five, six, seven, eight, nine, ten
                case jack, queen, king, ace
                
                func rankDescription() -> String {
                    switch self {
                    case .jack:
                        return "jack"
                    case .queen:
                        return "queen"
                    case .king:
                        return "king"
                    case .ace:
                        return "ace"
                    default:
                        return String(self.rawValue)
                    }
                    
                }
            
            func cardsValue() -> (value: Int, Int?) {
                       switch self {
                       case .two:
                           return (2, nil)
                       case .three:
                           return (3, nil)
                       case .four:
                           return (4, nil)
                       case .five:
                           return (5, nil)
                       case .six:
                           return (6, nil)
                       case .seven:
                           return (7, nil)
                       case .eight:
                           return (8, nil)
                       case .nine:
                           return (9, nil)
                       case .ten:
                           return (10, nil)
                       case .jack:
                           return (10, nil)
                       case .queen:
                           return (10, nil)
                       case .king:
                           return (10, nil)
                       case .ace:
                           return (1, 11)
                       }
                
                   }
            }
    
    enum Suit: String {
        case Spades = "spades"
        case Hearts = "hearts"
        case Diamonds = "diamonds"
        case Clubs = "clubs"
        
    }
    
    var description: String {
        return "\(rank.rawValue)_of_\(suit.rawValue)"
    }
    
    
       
}
