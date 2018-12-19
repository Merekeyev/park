//
//  MainOrderViewController.swift
//  Park
//
//  Created by Temirlan Merekeyev on 12/17/18.
//  Copyright © 2018 Bidigital. All rights reserved.
//

import UIKit

class MainOrderViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    private func setupView(){
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "ServicesTableViewCell", bundle: nil), forCellReuseIdentifier: "ServicesTableViewCell")
        self.tableView.register(UINib(nibName: "CompanyTableViewCell", bundle: nil), forCellReuseIdentifier: "CompanyTableViewCell")
        self.tableView.register(UINib(nibName: "SpecialMachineryTableViewCell", bundle: nil), forCellReuseIdentifier: "SpecialMachineryTableViewCell")
    }

}

extension MainOrderViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 4
        case 2:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ServicesTableViewCell", for: indexPath) as? ServicesTableViewCell else {fatalError()}
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyTableViewCell", for: indexPath) as? CompanyTableViewCell else {fatalError()}
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SpecialMachineryTableViewCell", for: indexPath) as? SpecialMachineryTableViewCell else {fatalError()}
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 112
        case 1:
            return 80
        case 2:
            return 400
        default:
            return 0
        }
    }
    
    
}
