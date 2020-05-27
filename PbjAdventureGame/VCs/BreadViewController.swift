//
//  BreadViewController.swift
//  PbjAdventureGame
//
//  Created by Yaz Burrell on 5/21/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

protocol PBJDataSendingDelegateProtocol {
    func sendPBJInfoToViewController(pbjPart: String)
}

class BreadViewController: UIViewController {
    
    var delegate: PBJDataSendingDelegateProtocol? = nil
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 10
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
    }
    
    
    @IBAction func sliceButtonPressed(_ sender: UIButton) {
        
    }
    

}
