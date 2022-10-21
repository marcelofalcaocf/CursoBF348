//
//  NameTableViewCell.swift
//  PrimeiroDesafioTextFieldDelegate
//
//  Created by Marcelo Falcao Costa Filho on 20/10/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(model: Car) {
        logoImageView.image = UIImage(named: model.imageName)
        brandLabel.text = model.brand
    }
}
