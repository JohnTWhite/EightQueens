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
    
    @IBAction func Commence(sender: AnyObject) {
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let test = EightQueens()
        ResultsOut.text = test
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

