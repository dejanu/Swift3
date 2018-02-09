//
//  ViewController.swift
//  JSON fun
//
//  Created by Sebastian Hette on 27.10.2016.
//  Copyright © 2016 MAGNUMIUM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let url = URL(string: "http://api.fixer.io/latest")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil
            {
                print ("ERROR")
            }
            else
            {
                if let content = data
                {
                    do
                    {
                        //Array
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject

                       // if let rates = myJson["rates"] as? NSDictionary
                       // {
                           //if let currency = rates["OK"]
                            //{
                            //    print (currency)
                          //  }
                       // }
                        
                        print(myJson)
                        
                    }
                    catch
                    {
                        
                    }
                }
            }
        }
        task.resume()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}

