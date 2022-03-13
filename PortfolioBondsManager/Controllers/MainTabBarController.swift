//
//  ViewController.swift
//  PortfolioBondsManager
//
//  Created by Анатолий Алипур on 13.03.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }

    private func setUpTabBar() {
        let menuViewController = createNavController(vc: HomeViewController(), itemName: "Home", itemImage: "house.circle")
        let portfolioViewController = createNavController(vc: PortfolioViewController(), itemName: "Portfolio", itemImage: "bag.circle")
        let operationsViewController = createNavController(vc: OperationsViewController(), itemName: "Operations", itemImage: "creditcard.circle")
        let reportsViewController = createNavController(vc: ReportsViewController(), itemName: "Reports", itemImage: "pencil.circle")
        let analyticsViewController = createNavController(vc: AnalyticsViewController(), itemName: "Analytics", itemImage: "a.circle")
        viewControllers = [menuViewController, portfolioViewController, operationsViewController, reportsViewController, analyticsViewController]
    }
    private func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), tag: 0)
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        return navController
    }
}

