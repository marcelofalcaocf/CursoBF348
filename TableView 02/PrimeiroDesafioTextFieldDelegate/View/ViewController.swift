//
//  ViewController.swift
//  PrimeiroDesafioTextFieldDelegate
//
//  Created by Marcelo Falcao Costa Filho on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var cars: [Car] = [Car(brand: "Fiat", color: "Azul", model: "Uno", imageName: "Fiat"),
                       Car(brand: "Chevrolet", color: "Branco", model: "Cruze",  imageName: "Chevrolet"),
                       Car(brand: "VW", color: "Preto", model: "Gol",  imageName: "Volkswagen"),
                       Car(brand: "Renault", color: "Amarelo", model: "Kwid",  imageName: "Renault")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(cars[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}

extension ViewController: UITableViewDataSource {
    
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

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true // vai deixar a gente editar nossa celular, fazer algum momvimento
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        cars.remove(at: indexPath.row)
        tableView.reloadData()
    }// para remover um item do nosso array
}
