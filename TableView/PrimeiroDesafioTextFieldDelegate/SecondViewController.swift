//
//  SecondViewController.swift
//  PrimeiroDesafioTextFieldDelegate
//
//  Created by Marcelo Falcao Costa Filho on 18/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    var person: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        // Do any additional setup after loading the view.
    }
    
    private func configView() {
        nameLabel.text = person?.name
        lastNameLabel.text = person?.sobrenome
        ageLabel.text = String(person?.idade ?? 0)
        professionLabel.text = person?.profissao
    }
}
