//
//  ViewController.swift
//  first_app
//
//  Created by Андрей Логвинов on 5/22/22.
//

import UIKit

class ViewController: UIViewController {
   
    var touches = 0 {
        //reading of changing touches
        didSet{
            touchesCounter.text = "Touches : \(touches)"
        }
    }
    
    func flipButton(emoji : String , button : UIButton){
        if button.currentTitle == emoji
        {
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.blue
        }
        else{
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor.white
        }
    }
    
    let emojiCollection = ["😎" , "Катюха  suck my balls" , "🤥" , "🤑"]
    
    @IBOutlet weak var touchesCounter: UILabel!
    @IBOutlet var buttonCollection: [UIButton]!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches+=1
        if let buttonIndex=buttonCollection.firstIndex(of:sender){
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)}
      
        
       
    }
  
}

