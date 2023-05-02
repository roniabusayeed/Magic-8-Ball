//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageLiteralResourceNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    func predictFuture() {
        imageView.image = UIImage(imageLiteralResourceName: imageLiteralResourceNames.randomElement()!)
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        predictFuture()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        predictFuture()
    }
}
