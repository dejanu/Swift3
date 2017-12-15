//
//  TeamLead.swift
//  Organigram
//
//  Created by OLPS RO TV on 12/10/17.
//  Copyright © 2017 OLPS RO TV. All rights reserved.
//

import Foundation
extension Employee {
    //we can only extend function and not properties
    func formatExperience ()
    {
        
    }
}
class TeamLead : Employee {
    var teamMembers : UInt8 = 1
    var projectBudget : Float = 150
    
    override init () {
        print("hooray I am a team lead")
    }
}
