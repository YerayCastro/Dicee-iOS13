//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
        

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Crear coleccion de imagenes en Array
        let diceArray = [ UIImage(imageLiteralResourceName: "DiceOne"),
                          UIImage(imageLiteralResourceName: "DiceTwo"),
                          UIImage(imageLiteralResourceName: "DiceThree"),
                          UIImage(imageLiteralResourceName: "DiceFour"),
                          UIImage(imageLiteralResourceName: "DiceFive"),
                                                  UIImage(imageLiteralResourceName: "DiceSix")]
        
        // Metodo para buscar número random(1)
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
        // Metodo para buscar un número random(2)
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

