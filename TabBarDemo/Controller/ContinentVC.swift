//
//  ContinentVC.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class ContinentVC: UIViewController {
    var imageName: String? = nil
    var currentContinent: Continent?
    
    let button: UIButton = {
        var button = UIButton()
        button.setTitle("Next Scene", for: .normal)
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.darkGray
        setupImage()
        setupButton()
    }
    
    func setupButton(){
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(openNextScene), for: .touchUpInside)
    }
    
    func setupImage(){
        
        imageView.image = UIImage(named: currentContinent!.imageName)
        
        view.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    @objc func openNextScene(){
        let detailVC = DetailVC()
//        self.navigationController?.present(detailVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}
