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
        var mix : String = ""
        if ((first == "red")&&(second == "red")){
        mix="red"
        }else if(first=="red")&&(second=="yellow"){
            mix="orange"
        }else if(first=="red")&&(second=="blue"){
            mix="purple"
        }else if(first=="yellow")&&(second=="yellow"){
            mix="yellow"
        }else if(first=="yellow")&&(second=="red"){
            mix="orange"
        }else if(first=="yellow")&&(second=="blue"){
            mix="green"
        }else if(first=="blue")&&(second=="red"){
            mix="purple"
        }else if(first=="blue")&&(second=="yellow"){
            mix="green"
        }else if(first=="blue")&&(second=="blue"){
            mix="blue"
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
