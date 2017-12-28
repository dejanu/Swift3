//
//  ViewController.swift
//  Xand0
//
//  Created by OLPS RO TV on 12/15/17.
//  Copyright © 2017 OLPS RO TV. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //call function for changing current background
        self.changeBackgroundColor()
        
        //call function for creating the view for score
        self.createScoreView()
        
        //call fucntion for creating the view for Game
        self.createGameView()
    }

    /// doc string
    func changeBackgroundColor(){
        
        // self = current instance of class GameViewController
        //.view == property of UIViewController class
        // .backgroundcolor == property of UIView
        self.view.backgroundColor = UIColor.cyan
        // object UIColor : UIKit
    
    }
    
    func createScoreView(){
        //create UIView object pe care l adaugam peste GameView controller
        let containerView = UIView()
        //dimensiuni pentru CGRect object)
        let screenWidth = self.view.frame.width
        let screenHeight = self.view.frame.height
        containerView.frame = CGRect(x: 0,
                                     y: 0,
                                     width: screenWidth,
                                    height: screenHeight * 0.4)
        
        containerView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 0, alpha: 0.7)
        //add child view over parent view
        self.view.addSubview(containerView)
        
        //create label player_one
        let player_one = UILabel(frame:CGRect(x: containerView.frame.origin.x ,
                                              y: containerView.frame.height * 0.3 ,
                                              width: 100,
                                              height: 100))
        player_one.text = "Player One"
        player_one.textColor = UIColor.blue
        player_one.font = UIFont.boldSystemFont(ofSize: 20)
        
        containerView.addSubview(player_one)
        
        //create_label versus
        let versus = UILabel(frame: CGRect(x: containerView.frame.width * 0.1 ,
                                           y: containerView.frame.height * 0.4,
                                           width: 80,
                                            height: 80))
        versus.text = "VS."
        containerView.addSubview(versus)
        
        
        let player_two = UILabel(frame: CGRect(x: containerView.frame.origin.x ,
                                               y: containerView.frame.height * 0.7,
                                               width: 100,
                                               height: 100))
        player_two.text = "Player Two"
        
        //cast from CGrect to string
       // let valori = containerView.frame.width.description
        
        containerView.addSubview(player_two)
        
        print("width ScoreView: " + containerView.frame.width.description)
        print("height ScoreView: " + containerView.frame.height.description)
        
        ///create image view for game logo (imagine e de tip UIview)
        let logo = UIImageView(frame: CGRect(x: containerView.frame.origin.x + 10,
                                             y: containerView.frame.origin.y + 10,
                                             width: 50,
                                             height: 50))
        logo.image = UIImage(named:"logo")
        containerView.addSubview(logo)
        
        
        //add button for reset
        let resetButton = UIButton()
        resetButton.frame = CGRect(x: containerView.frame.width - 50,
                                   y: containerView.frame.height - 50,
                                   width: 40,
                                   height: 40)
        
        resetButton.backgroundColor = .white
        containerView.addSubview(resetButton)
        resetButton.setTitle("RST", for: UIControlState.normal)
        resetButton.setTitleColor( .black, for: .normal)
        resetButton.setTitle("-", for: UIControlState.highlighted)
        resetButton.setTitleColor(.red, for: .highlighted)
        resetButton.layer.cornerRadius = 20.0
        
        
        //manipulate layer for button or from containerView
        resetButton.layer.borderWidth = 1.0
        resetButton.layer.borderColor =  UIColor.black.cgColor
        
        
        
        
    }
    
    func createGameView(){
        //create UIview object pe care o sa l adaugam peste container
        let containerView = UIView()
        
        //containerView.frame.width ???
        let screenWidth = self.view.frame.width
        let screenHeight = self.view.frame.height
        
        containerView.frame = CGRect(x: 0,
                                     y: screenHeight * 0.4,
                                     width: screenWidth,
                                     height: screenHeight * 0.6)
        
        containerView.backgroundColor = UIColor(displayP3Red: 0,
                                                green: 0,
                                                blue: 0.7,
                                                alpha: 1)
        
        //stack over the parent layout
        self.view.addSubview(containerView)
        
        
        
        print("width GameView: " + containerView.frame.width.description)
        print("height Gameview: " + containerView.frame.height.description)
        
    
        
        
        
        //label vizualizare
        let xyz = UILabel(frame: CGRect(x: containerView.frame.width * 0.5,
                                       y: containerView.frame.height * 0.5,
                                       width: 100 ,
                                       height: 100))
        
        let xx = containerView.frame.width * 0.5
        let yy = containerView.frame.width * 0.5
        
        xyz.text = xx.description + "   " + yy.description
        containerView.addSubview(xyz)
        
        
        
        //add button for x or o
        let testButton = UIButton()
        testButton.frame = CGRect(x: containerView.frame.width * 0.5,
                                   y: containerView.frame.height * 0.5,
                                   width: containerView.frame.width * 0.3,
                                   height: containerView.frame.height * 0.3)
        //add image on button
        testButton.setBackgroundImage(UIImage(named:"logo"), for: UIControlState.normal)
    
        testButton.backgroundColor = .white
        containerView.addSubview(testButton)
        testButton.setTitle("RST", for: UIControlState.normal)
        testButton.setTitleColor( .black, for: .normal)
        testButton.setTitle("-", for: UIControlState.highlighted)
        testButton.setTitleColor(.red, for: .highlighted)
        
        
        //manipulate layer for button or from containerView
        testButton.layer.borderWidth = 1.0
        testButton.layer.borderColor =  UIColor.black.cgColor
        testButton.layer.cornerRadius = 30
        
        //add action to button
        testButton.addTarget(self,
                             action: #selector(GameViewController.ShowAlert),
                             for: UIControlEvents.touchUpInside)
    }

    @objc func ShowAlert(){
        print ("it works")
//        let alert = UIAlertController(title: "Alert", message: "ButtonPressed", preferredStyle: .actionSheet)
//        
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action: UIAlertAction) -> Void in}))
    }
//    func CreateCustomLable(parentView: UIView, verticalOffset : Double, text: String){
//        let customLabel = UILabel()
//        customLabel.frame = CGRect(x: parentView.frame.origin.x + 5, y: CGRect(verticalOffset), width: 100, height: 100)
//        customLabel.text = text
//    }
    
    
}

