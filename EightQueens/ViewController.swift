//
//  ViewController.swift
//  EightQueens
//
//  Created by John White on 6/18/16.
//  Copyright © 2016 TwoStupidKids. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultsOut: UITextView!
    
    //Calculate our queens positions and update results text.
    @IBAction func calculate(sender: UIButton) {
        
        let Queens = EightQueens()
        ResultsOut.text = Queens
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

