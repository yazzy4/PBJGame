//
//  PBJModel.swift
//  PbjAdventureGame
//
//  Created by Yaz Burrell on 6/3/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import Foundation
import UIKit

class PBJModel {
    var numberOfSlices: String
    var typeOfJelly: String
    var typeOfPB: String
    
    init(numberOfSlices: String, typeOfJelly: String, typeOfPB: String) {
        self.numberOfSlices = numberOfSlices
        self.typeOfJelly = typeOfJelly
        self.typeOfPB = typeOfPB
    }

    
       static let menuOptions = ["Number of Slices", "Type of Jelly", "Type of Peanut Butter"]
}

 
