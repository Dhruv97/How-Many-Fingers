//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Dhruv Upadhyay on 9/22/15.
//  Copyright © 2015 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   // @IBOutlet var points: UILabel!
    @IBOutlet var guessButton: UIButton!
    @IBOutlet var result: UILabel!
    
    @IBOutlet var text: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        
    
        //var counter = 0;
       // counter = Int(points.text!)!
     
       let myGuess = Int(text.text!)
                let answer = Int(arc4random_uniform(6))
        
        
        
        if myGuess == nil {
            
            result.text = "Please enter a number!"
            
          } else if myGuess > 5 || myGuess <= 0 {
                
                result.text = "Please enter a number between 1 and 5!"
                
            }else if myGuess == answer {
            
            self.view.endEditing(true)
            
           // counter++
            
            result.text = "You're right!"
            
        } else if myGuess != answer {
            
            self.view.endEditing(true)
            
            result.text = "You're wrong! The correct answer is \(answer)!"
        }
        
      
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        
        guessButton.setImage(UIImage(named:"group1.png"),forState:UIControlState.Normal)
                
        guessButton.setImage(UIImage(named:"group.png"),forState:UIControlState.Highlighted)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    
    self.view.endEditing(true)
}


}


