//
//  FoodOptionsView.swift
//  PbjAdventureGame
//
//  Created by Yaz Burrell on 6/2/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class FoodOptionsView: UIView {

    lazy var itemsTableView: UITableView = {
        let tv = UITableView()
        tv.register(FoodOptionsCell.self, forCellReuseIdentifier: "foodCell")
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupConstraints()
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        
    }
    

}
