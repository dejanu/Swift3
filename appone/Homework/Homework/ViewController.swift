//
//  ViewController.swift
//  Homework
//
//  Created by OLPS RO TV on 12/2/17.
//  Copyright © 2017 OLPS RO TV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        
        //call from parent class
        super.viewDidAppear(true)
        //self.printHelloWorld(message:"Hello world")
       // showAlert()
        showAlertController()
    }
    func printHelloWorld(message:String="default argument"){
        ///function with defalt string argument
        NSLog (message)
    }
    
    func showAlert(){
        let alertView = UIAlertView(
            title :"info",
            message :"Hello world",
            delegate:nil,
            cancelButtonTitle:"ok"
        )
        alertView.show()
    }
    
    func showAlertController (){
        let alertControler = UIAlertController(title: "Info", message: "Alert controller message", preferredStyle: UIAlertControllerStyle.actionSheet)
    
    //ok button
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler:nil)
        
        
        alertControler.addAction(action)
    self.present(
        alertControler,
        animated:true,
        completion:nil
    )
    }
}


