//
//  TabBarController.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupViewControllers()
    }
    
    func setupViewControllers(){
        
        let northAmerica = Continent(name: "North America", imageName: "northAmerica", associatedColor: .systemPurple)
        let southAmerica = Continent(name: "South America", imageName: "southAmerica", associatedColor: .systemPink)
        let africa = Continent(name: "Africa", imageName: "africa", associatedColor: .systemBlue)
        let asia = Continent(name: "Asia", imageName: "asia", associatedColor: .systemOrange)
        let europe = Continent(name: "Europe", imageName: "europe", associatedColor: .systemOrange)
        let australia = Continent(name: "Australia", imageName: "australia", associatedColor: .systemRed)
        
        let continents = [northAmerica, southAmerica, africa, asia, europe, australia]
        
        var navControllers = [UINavigationController]()
        
        for continent in continents{
            let vc = ContinentVC()
            let navController = UINavigationController(rootViewController:vc)
            vc.currentContinent = continent
            vc.tabBarItem = UITabBarItem(title: continent.name, image: UIImage(systemName: "staroflife"), selectedImage: UIImage(systemName: "staroflife.fill"))
            navControllers.append(navController)
        }
        
        viewControllers = navControllers
    }
}
