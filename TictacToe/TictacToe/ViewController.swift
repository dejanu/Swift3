//
//  ViewController.swift
//  TictacToe
//
//  Created by OLPS RO TV on 12/31/17.
//  Copyright © 2017 OLPS RO TV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 //cross
    var gameState =  [0,0,0,0,0,0,0,0,0]
    @IBAction func action(_ sender: AnyObject) {
        
        if (gameState[sender.tag-1] == 0){
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer==1){
                sender.setImage(UIImage(named:"cross.png"), for: UIControlState())
                //change turn
                activePlayer = 2
            }
            else
            {
                sender.setImage(UIImage(named:"nought.png"), for:UIControlState())
                //change turn
                activePlayer = 1
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
        
        //call gameView
        self.createGameview()
    }


    func createGameview(){
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor(red: 0.6,
                                                green: 0.1,
                                                blue: 0,
                                                alpha: 0.7)
        
        let Wwidth = self.view.frame.width
        let Hheight = self.view.frame.height
        
        containerView.frame = CGRect(x: 0,
                                     y: 0,
                                     width: Wwidth,
                                     height: Hheight * 0.5)
        
        self.view.addSubview(containerView)
        
        
        
    }

//class
}

