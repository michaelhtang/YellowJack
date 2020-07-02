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
        let dealer = DealerBrain()
        var deck0 = [Card]()
        var cardIndex = 51
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            card_one.image = .none
            card_two.image = .none
            deck0 = dealer.generateDeckOfCards()
        }
        
        @IBAction func dealButtonPressed(_ sender: UIButton) {
            
            
            
            //        let card0 = deck0[Int.random(in: 0...51)]
            if cardIndex != -1 {
                let cardDrew0 = deck0[cardIndex]
                //        let infoOfSingleCard = dealer.cardsInfo(playingCard: singleCard)
                //        print(infoOfSingleCard)
                if cardDrew0.rank == .ace {
                    cardsValue.text = "\(cardDrew0.rank.cardsValue().value) or \(cardDrew0.rank.cardsValue().1!)"
                } else {
                    cardsValue.text = "\(cardDrew0.rank.cardsValue().value)"
                }
                print("You drew a \(cardDrew0.rank)_of_\(cardDrew0.suit.rawValue), cards left: \(cardIndex)")
                cardIndex -= 1
                card_one.image = UIImage(named: "\(cardDrew0.rank)_of_\(cardDrew0.suit.rawValue)")
            } else {
                let alert = UIAlertController(title: "No more cards left", message: "There are no more cards left in the deck. Generate a new deck?", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                    self.deck0 = self.dealer.generateDeckOfCards()
                    self.deck0.shuffle()
                    self.cardIndex = 51
                }))
                alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
                
                present(alert, animated: true)
            }
        }
        
        @IBAction func shufflePressed(_ sender: UIButton) {
            
            deck0.shuffle()
            
        }
        
        
    }

