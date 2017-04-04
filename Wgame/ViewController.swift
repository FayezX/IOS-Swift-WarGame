//
//  ViewController.swift
//  Wgame
//
//  Created by Fayez Ahmed on 12/18/16.
//  Copyright © 2016 fizzrecords. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightcard: UIImageView!
    @IBOutlet weak var rightscore: UILabel!
    var rightscoretext = 0;
    
    @IBOutlet weak var leftcard: UIImageView!
    @IBOutlet weak var leftscore: UILabel!
    var leftscoretext = 0;
    
    @IBOutlet weak var firstp: UILabel!
    var mystring1 = String();
    @IBOutlet weak var secondp: UILabel!
    var mystring2 = String();
    
    let cardname = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card13","card12","card1"];    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       firstp.text = mystring1;
        secondp.text = mystring2;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressed_button(_ sender: AnyObject) {
        
        let randright:Int = Int(arc4random_uniform(13));
//        print("right = %d",randright);
        rightcard.image = UIImage(named: (cardname[randright]));
        let randleft:Int = Int(arc4random_uniform(13));
//        print("left = %d",randleft);
        leftcard.image = UIImage(named: (cardname[randleft]));
        

        if(randright > randleft)
            {
                rightscoretext += 1;
                rightscore.text = String(rightscoretext);
            }
        else if(randleft == randright)
            {
            //do nothing
            }
        else
            {
                leftscoretext += 1;
                leftscore.text = String(leftscoretext);
            
            }
        
    }
    
    @IBAction func reset_pressed(_ sender: AnyObject) {
        rightscoretext = 0;
        rightscore.text = String(rightscoretext);
        rightcard.image = UIImage(named: "back");

        
        leftscoretext = 0;
        leftscore.text = String(leftscoretext);
        leftcard.image = UIImage(named: "back");

    }
    
    
}



