//
//  DetailVC.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//


import UIKit

class DetailVC: UIViewController {

    let messageLabel : UILabel = {
        let lbl = UILabel()
        lbl.text = "Details about a Continent"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orange
        self.view.addSubview(messageLabel)
        
        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            messageLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }

}
