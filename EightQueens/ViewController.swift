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
    
    //calculate our queens positions and update results text.
    @IBAction func calculate(sender: UIButton) {
        
        let Queens = EightQueens()
        ResultsOut.text = Queens
        
    }
    
    //clear button to orginal text.
    @IBAction func clear(sender: UIButton) {
        
        let orginal_text =  "I was first made aware of the eight queen problem by the Youtube channel Numberphile. https://www.youtube.com/watch?v=jPcBU0Z2Hj8 I wanted to explore this problem in computer science. Using a recursive function to check safe positions for my queens which are placed on their own row, as should be obivious as to why, and then adds any succesful eighth queen placment into a string. This string then returns into another string that collects all correct positions. That result then displays in this box. "
        ResultsOut.text = orginal_text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

