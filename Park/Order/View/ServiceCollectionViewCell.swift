//
//  ServiceCollectionViewCell.swift
//  Park
//
//  Created by Temirlan Merekeyev on 12/17/18.
//  Copyright © 2018 Bidigital. All rights reserved.
//

import UIKit

class ServiceCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var serviceTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView(){
        containerView.layer.cornerRadius = 16
        containerView.layer.masksToBounds = true
    }

}
