//
//  Employee.swift
//  Organigram
//
//  Created by OLPS RO TV on 12/10/17.
//  Copyright © 2017 OLPS RO TV. All rights reserved.
//

import Foundation
enum WorkingType {
    //the value from the enum are WorkingType
    case Full
    case Part
    case Associate
}

class Employee {
    
    init() {
        print("I am just an empployee")
    }
    
    //properties: Tip = Valoare
    var wage : Float = 0
    var workingHours : Int = 40
    
    // Tip(workingType) = Value(WorkingType)
    var workingType : WorkingType = WorkingType.Full
    
    var job: String = ""
    
    //optional
    var experience: Date?
    
    //constant, cannot be modified
    let company : String = "Telacad"
}


