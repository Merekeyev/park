//
//  CompanyTableViewCell.swift
//  Park
//
//  Created by Temirlan Merekeyev on 12/17/18.
//  Copyright © 2018 Bidigital. All rights reserved.
//

import UIKit

class CompanyTableViewCell: UITableViewCell {

    @IBOutlet weak var companyImageView: UIImageView!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    private func setupView(){
        companyImageView.layer.cornerRadius = 8
        companyImageView.layer.masksToBounds = true
    }
    
    
    @IBAction func favoriteButtonPressed(_ sender: UIButton) {
        
    }
}
