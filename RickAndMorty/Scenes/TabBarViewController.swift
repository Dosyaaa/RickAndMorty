//
//  TabBarViewController.swift
//  RickAndMorty
//
//  Created by User on 8/4/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setTabBarAppearance()

        let window2 = SeriesViewController()
        
        let itemPerson = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )

        let itemSeries = UITabBarItem(
            title: "Series",
            image: UIImage(systemName: "play.laptopcomputer"),
            selectedImage: UIImage(systemName: "play.laptopcomputer")
        )
        
        let itemSettings = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "slider.horizontal.3"),
            selectedImage: UIImage(systemName: "slider.horizontal.3")
        )
    
    }
    
    func setTabBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width, height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.tabBarColor.cgColor
        tabBar.tintColor = .tabBarItemColor
        tabBar.unselectedItemTintColor = .taBarItemLight
    }
}

