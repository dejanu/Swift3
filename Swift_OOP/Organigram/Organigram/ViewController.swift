//
//  ViewController.swift
//  Organigram
//
//  Created by OLPS RO TV on 12/10/17.
//  Copyright © 2017 OLPS RO TV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //create instance
        let employee = Employee()
        
        employee.workingType = .Associate
        
       // print(employee.experience)
//        will output nil = represent the absence of value
//        optional = enum(struct) for dealing with the absence of value
//employee.experience = Date()
       // print(employee.experience)
     
        //call testTeamLead
        testTeamLead()
    }

    func testTeamLead(){
        let teamLead  = TeamLead()
        print(teamLead.projectBudget)
        print(teamLead.company)
    }
    
//class
}

