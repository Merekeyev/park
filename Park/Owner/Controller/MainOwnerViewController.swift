//
//  MainOwnerViewController.swift
//  Park
//
//  Created by Temirlan Merekeyev on 12/17/18.
//  Copyright © 2018 Bidigital. All rights reserved.
//

import UIKit

class MainOwnerViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "MainOwnerTableViewCell", bundle: nil), forCellReuseIdentifier: "MainOwnerTableViewCell")
    }

}

extension MainOwnerViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainOwnerTableViewCell", for: indexPath) as? MainOwnerTableViewCell else {fatalError()}
        if indexPath.row == 1{
            cell.addressLabel.text = "An address is a collection of information, presented in a mostly fixed format, used to give the location of a building, apartment, or other structure or a plot of land, generally using political boundaries and street names as references, along with other identifiers such as house or apartment numbers. Some addresses also contain special codes, such as a postal code, to make identification easier and aid in the routing of mail."
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
