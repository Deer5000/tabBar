//
//  ContinentView.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/9/21.
//  Copyright © 2021 Adriana González Martínez. All rights reserved.
//

import UIKit

class ContinentView: UIView {
    
    var continent: Continent?
    let button: UIButton = {
        var button = UIButton()
        button.setTitle("Details", for: .normal)
        button.backgroundColor = UIColor.orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    convenience init(continent: Continent){
        self.init(frame: .zero)
        self.continent = continent
        setup()
    }
    
    private func setup(){
        self.translatesAutoresizingMaskIntoConstraints = false
        setupImage()
        setupButton()
    }
    
    func setupButton(){
        self.addSubview(button)
        button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupImage(){
        if let imageName = continent?.imageName{
            imageView.image = UIImage(named: imageName)
        }
        self.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
}
