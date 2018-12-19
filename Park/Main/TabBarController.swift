//
//  TabBarController.swift
//  Park
//
//  Created by Temirlan Merekeyev on 12/17/18.
//  Copyright © 2018 Bidigital. All rights reserved.
//

import UIKit

private struct Constants{
    static let mainStoryboard = "Main"
    static let mainOrderIdentifier = "MainOrderViewController"
    static let myOrderIdentifier = "MyOrdersViewController"
    static let profileIdentifier = "ProfileViewController"
    static let mainOwnerIdentifier = "MainOwnerViewController"
    static let responseIdentifier = "ResponseViewController"
    
}

enum UserType{
    case owner
    case order
}

class TabBarController: UITabBarController {
    var mainOrderVC : MainOrderViewController?
    var myOrderVC : MyOrdersViewController?
    var profileVC : ProfileViewController?
    var mainOwnerVC : MainOwnerViewController?
    var responseVC : ResponseViewController?
    var type = UserType.order{
        didSet{
            change()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupOrderTabBar()
    }
    
    func setupOrderTabBar(){
        let mainStoryboard = UIStoryboard(name: Constants.mainStoryboard, bundle: nil)
        mainOrderVC = mainStoryboard.instantiateViewController(withIdentifier: Constants.mainOrderIdentifier) as? MainOrderViewController
        myOrderVC = mainStoryboard.instantiateViewController(withIdentifier: Constants.myOrderIdentifier) as? MyOrdersViewController
        profileVC = mainStoryboard.instantiateViewController(withIdentifier: Constants.profileIdentifier) as? ProfileViewController
        mainOwnerVC = mainStoryboard.instantiateViewController(withIdentifier: Constants.mainOwnerIdentifier) as? MainOwnerViewController
        responseVC = mainStoryboard.instantiateViewController(withIdentifier: Constants.responseIdentifier) as? ResponseViewController
        mainOrderVC!.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "Order"), selectedImage: #imageLiteral(resourceName: "Order Fill"))
        myOrderVC!.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "myOrders"), selectedImage: #imageLiteral(resourceName: "myOrders Fill"))
        profileVC!.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "Profile"), selectedImage: #imageLiteral(resourceName: "Profile Fill"))
        mainOwnerVC!.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "Order List"), selectedImage: #imageLiteral(resourceName: "Order List Fill"))
        responseVC!.tabBarItem = UITabBarItem(title: nil, image: #imageLiteral(resourceName: "myOrders"), selectedImage: #imageLiteral(resourceName: "myOrders Fill"))
        self.viewControllers = [mainOrderVC!, myOrderVC!, profileVC!]
    }
    
    func setupOwnerTabBar(){
        
    }
    
    private func change(){
        switch type {
        case .order:
            self.viewControllers = [mainOrderVC!, myOrderVC!, profileVC!]
        case .owner:
            self.viewControllers = [mainOwnerVC!, responseVC!, profileVC!]
        }
        
    }
    
}
