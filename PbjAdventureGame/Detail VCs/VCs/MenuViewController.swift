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
    

    var menuOptions = ["Number of Slices", "Type of Jelly", "Type of Peanut Butter"]
    
    var itemOptions = FoodOptionsCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main Menu"
        menuTableView.dataSource = self
        menuTableView.delegate = self
        
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(didPressDoneButton(_:)))
    }
    
//    @objc func didPressDoneButton(_ sender: UIBarButtonItem){
//        performSegue(withIdentifier: "doneSegue", sender: self)
//    }


}

extension MenuViewiewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell")
        cell?.textLabel?.text = menuOptions[indexPath.row]
        
        return cell!
    }
    
    
}
