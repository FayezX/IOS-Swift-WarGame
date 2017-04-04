//
//  ViewController2.swift
//  Wgame
//
//  Created by Fayez Ahmed on 12/22/16.
//  Copyright © 2016 fizzrecords. All rights reserved.
//

import Foundation
import UIKit


class ViewController2: UIViewController {
    
    @IBOutlet weak var player1name: UITextField!
    @IBOutlet weak var player2name: UITextField!

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "go" )
        {
        
            if let destinationVC = segue.destination as? ViewController {
                destinationVC.mystring1 = player1name.text!;
                destinationVC.mystring2 = player2name.text!;
            }
            
            
        }
     
    }
    
}
