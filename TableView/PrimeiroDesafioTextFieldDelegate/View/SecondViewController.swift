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
    @IBOutlet weak var tableView: UITableView!
    
    var person: Pessoa?
    
    var cars: [Car] = [Car(brand: "Fiat", color: "Azul", model: "Uno", imageName: "Fiat"),
                       Car(brand: "Chevrolet", color: "Branco", model: "Cruze",  imageName: "Fiat"),
                       Car(brand: "VW", color: "Preto", model: "Gol",  imageName: "Fiat"),
                       Car(brand: "Renault", color: "Amarelo", model: "Kwid",  imageName: "Fiat")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configTableView()
    }
    
    private func configView() {
        nameLabel.text = person?.name
        lastNameLabel.text = person?.sobrenome
        ageLabel.text = String(person?.idade ?? 0)
        professionLabel.text = person?.profissao
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
}

extension SecondViewController: UITableViewDelegate {
    
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell {
            cell.configCell(model: cars[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
