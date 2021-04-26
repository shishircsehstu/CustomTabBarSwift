//
//  TabBarViewController.swift
//  CustomTabBarSwift
//
//  Created by IAPPS on 22/4/21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    func setupTabBar (){
        
        guard let homeVC = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: "HomeViewController") as? HomeViewController else{
            return
        }
        
        let firstItem = UINavigationController.init(rootViewController: homeVC)
        
        guard let historyVC = UIStoryboard(name: "History", bundle: nil).instantiateViewController(identifier: "HistoryViewController") as? HistoryViewController else{
            return
        }
        let secondItem = UINavigationController.init(rootViewController: historyVC)
        
        guard let favouriteVC = UIStoryboard(name: "Favourite", bundle: nil).instantiateViewController(identifier: "FavouriteViewController") as? FavouriteViewController else{
            return
        }
        
        let thirdItem = UINavigationController.init(rootViewController: favouriteVC)
        
        guard let settingsVC = UIStoryboard(name: "Settings", bundle: nil).instantiateViewController(identifier: "SettingsViewController") as? SettingsViewController else{
            return
        }
        
        let fourthItem = UINavigationController.init(rootViewController: settingsVC)
        let tabBarItemList = [firstItem, secondItem, thirdItem,fourthItem]
        
        self.viewControllers = tabBarItemList
        
    }
}
