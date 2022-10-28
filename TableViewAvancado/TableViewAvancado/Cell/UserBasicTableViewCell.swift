//
//  UserBasicTableViewCell.swift
//  TableViewAvancado
//
//  Created by Marcelo Falcao Costa Filho on 27/10/22.
//

import UIKit

class UserBasicTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "UserBasicTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(model: User) {
        logoImageview.image = UIImage(named: model.image)
        nameLabel.text = model.name
    }
}
