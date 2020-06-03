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
        menuTableView.dataSource = self
        menuTableView.delegate = self
        self.menuTableView.register(ItemTableViewCell.self, forCellReuseIdentifier: "slicesCell")
         self.menuTableView.register(ItemTableViewCell.self, forCellReuseIdentifier: "jellyCell")
        self.menuTableView.register(ItemTableViewCell.self, forCellReuseIdentifier: "pbCell")
        
        populateImage()

    }
    
    func populateImage(){
          for i in 0...1 {
              foodImage.append(UIImage(named: "pbj\(i)") ?? UIImage())
          }
          
      }
    
class ItemTableViewCell: UITableViewCell {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    
}
  



}

extension MenuViewiewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell (withIdentifier: "slicesCell",  for: indexPath) as! ItemTableViewCell
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "jellyCell", for: indexPath) as! ItemTableViewCell
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "pbCell", for: indexPath) as! ItemTableViewCell
        cell.foodImageView?.image = foodImage[indexPath.row]
        cell1.foodImageView?.image = foodImage[indexPath.row]
        cell2.foodImageView?.image = foodImage[indexPath.row]
        
        return cell
    }
    
    
}
