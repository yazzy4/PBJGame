//
//  MenuViewController.swift
//  PbjAdventureGame
//
//  Created by Yaz Burrell on 5/28/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class MenuViewiewController: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!

    var foodImage = [UIImage]()
    
    var pbjModel: PBJModel?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main Menu"


    }
    
    func populateImage(){
          for i in 0...1 {
              foodImage.append(UIImage(named: "pbj\(i)") ?? UIImage())
          }
          
      }
    

  



}

