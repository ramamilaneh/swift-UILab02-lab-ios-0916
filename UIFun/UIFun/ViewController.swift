//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.paintColorName = "red"
    }

    @IBOutlet weak var firstSegmented: UISegmentedControl!
    
    @IBOutlet weak var secondSegment: UISegmentedControl!
    
    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        var mix : String
        switch (first,second){
        case ("red","red"):
        mix="red"
        case ("red","yellow"),("yellow","red"):
            mix="orange"
        case("red","blue"),("blue","red"):
            mix="purple"
        case("yellow","yellow"):
            mix="yellow"
        case("yellow","blue"),("blue","yellow"):
            mix="green"
        case("blue","blue"):
            mix="blue"
        default:
            return"No color"
        }
        return mix
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        var mix : String
       mix = mixColors(withFirst: firstSegmented.color.name, second: secondSegment.color.name)
        paintBucket.paintColorName = mix
        
    }
}
