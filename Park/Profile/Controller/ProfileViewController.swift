//
//  ProfileViewController.swift
//  Park
//
//  Created by Temirlan Merekeyev on 12/17/18.
//  Copyright © 2018 Bidigital. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let vc = self.tabBarController as? TabBarController else {return}
        if vc.type == .owner{
            vc.type = .order
        }else {
            vc.type = .owner
        }
    }
    
}
