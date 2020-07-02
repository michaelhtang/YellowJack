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
    let dealer = DealerBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        card_one.image = .none
        card_two.image = .none
        
    }

    @IBAction func dealButtonPressed(_ sender: UIButton) {
        
        let deck0 = dealer.generateDeckOfCards()
        let singleCard = deck0[51]
        let InfoOfSingleCard = dealer.cardsInfo(playingCard: singleCard)
        print(InfoOfSingleCard)
        
        print("You drew a \(singleCard.rank)_of_\(singleCard.suit.rawValue)")
        card_one.image = UIImage(named: "\(singleCard.rank)_of_\(singleCard.suit.rawValue)")
    }
    
}

