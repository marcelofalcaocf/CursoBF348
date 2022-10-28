//
//  EmployeeTableViewCell.swift
//  TableViewAvancado
//
//  Created by Marcelo Falcao Costa Filho on 27/10/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var wageLabel: UILabel!
  
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCellEmployee(model: Employee) {
        logoImageView.image = UIImage(named: model.imageUser)
        nameLabel.text = model.name
        ageLabel.text = String(model.age)
        professionLabel.text = model.profession
        wageLabel.text = model.salary
    }
    
}
