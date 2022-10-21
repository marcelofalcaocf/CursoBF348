//
//  SecondViewTableViewCell.swift
//  PrimeiroDesafioTextFieldDelegate
//
//  Created by Marcelo Falcao Costa Filho on 20/10/22.
//

import UIKit

class SecondViewTableViewCell: UITableViewCell {

    @IBOutlet weak var logoCarImageView: UIImageView!
    @IBOutlet weak var brandCarLabel: UILabel!
    
    func configCell(model: Car) {
        logoCarImageView.image = UIImage(named: model.imageName)
        brandCarLabel.text = model.brand
    }
}
