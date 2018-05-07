//
//  ViewController.swift
//  GameDemo
//
//  Created by B203u on 2/21/18.
//  Copyright © 2018 B203u. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  // Observer Property
    var flipCount =  0 {
        didSet {
            flipCountLabel.text = "FlipCount: \(flipCount)"        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    let emojiChoices = ["👻","🎃","😎","😡"]
    
    @IBOutlet var cardButton: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        
        if  let cardNumber =  cardButton.index(of: sender)
        {
        print("cardNumber\(cardNumber)")
        let emoji = emojiChoices[cardNumber]
        flipCard(WithEmoji: emoji, button: sender)
        
        }
        
       
    }
    
    
    
    func flipCard(WithEmoji emoji : String, button : UIButton )
    {
        if emoji == button.currentTitle
        {
           button.setTitle("", for: .normal)
           button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
        
        
        
    }
    
    
    
    
}

