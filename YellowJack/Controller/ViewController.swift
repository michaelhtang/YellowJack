    //
    //  ViewController.swift
    //  YellowJack
    //
    //  Created by Michael Tang on 2020-06-30.
    //  Copyright © 2020 Michael Tang. All rights reserved.
    //
    
    import UIKit
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var card_one: UIImageView!
        @IBOutlet weak var card_two: UIImageView!
        @IBOutlet weak var dealButton: UIButton!
        @IBOutlet weak var cardsValue: UILabel!
        @IBOutlet weak var shuffleButton: UIButton!
        @IBOutlet weak var stepper: UIStepper!
        @IBOutlet weak var numberOfDecksLabel: UILabel!
        
        var numberOfDecks = Int()
        let dealer = DealerBrain()
        var shoe = Shoe(2)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            card_one.image = .none
            card_two.image = .none
            numberOfDecksLabel.text = "\(Int(stepper.value)) decks"
            
            
        }
        
        
        @IBAction func stepperChanged(_ sender: UIStepper) {
            shoe.decks.removeAll()
            numberOfDecks = Int(stepper.value)
            numberOfDecksLabel.text = String(numberOfDecks) + " decks"
            shoe = Shoe(numberOfDecks)
            shoe.numberOfCardsTotal(in: shoe)
            shoe.numberOfCardsPerDeck(in: shoe)
        }
        
            
        
        
        
        @IBAction func dealButtonPressed(_ sender: UIButton) {
            
            shoe.numberOfCardsTotal(in: shoe)
            
//            let cardDrew = decks[decks.count-1]
//                //        let infoOfSingleCard = dealer.cardsInfo(playingCard: singleCard)
//                //        print(infoOfSingleCard)
//                if cardDrew.rank == .ace {
//                    cardsValue.text = "\(cardDrew.rank.cardsValue().value) or \(cardDrew.rank.cardsValue().1!)"
//                } else {
//                    cardsValue.text = "\(cardDrew.rank.cardsValue().value)"
//                }
//            print("You drew a \(cardDrew.rank)_of_\(cardDrew.suit.rawValue), cards left: \(deck.numberOfCards(in: deck)-1)")
//            decks.remove(at: decks.count-1)
//                card_one.image = UIImage(named: "\(cardDrew.rank)_of_\(cardDrew.suit.rawValue)")
//                return
//            }
            
//                let alert = UIAlertController(title: "No more cards left", message: "There are no more cards left in the deck. Generate a new deck?", preferredStyle: .alert)
//
//                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
//                    self.deck0 = self.deck.generateDeckOfCards()
//                    self.deck0.shuffle()
//
//                }))
//                alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
//
//                present(alert, animated: true)
            
        }
        
        @IBAction func shufflePressed(_ sender: UIButton) {
            
//            decks.shuffle()
            
        }
        
        
    }
    
