//
//  MainTableController.swift
//  Ins
//
//  Created by GetHired on 8/8/18.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser == nil {
            showLogInView()
            return
        }
         setupViewControllers()
    }
    
    func showLogInView(){
        DispatchQueue.main.async {
            // wrap login controller in the navidationController
            let loginController = LoginController()
            let navController = UINavigationController(rootViewController: loginController)
            self.present(navController, animated: true, completion: nil)
        }
        
        return
    }
    
    func setupViewControllers() {
        // need set layout and wrap into navigatorController
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        
        let navController = UINavigationController(rootViewController: userProfileController)
        
        navController.tabBarItem.image = #imageLiteral(resourceName: "profile_unselected")
        navController.tabBarItem.selectedImage = #imageLiteral(resourceName: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [navController, UIViewController()]
    }
}
