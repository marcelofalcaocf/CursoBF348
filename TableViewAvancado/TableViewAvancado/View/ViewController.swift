//
//  ViewController.swift
//  TableViewAvancado
//
//  Created by Marcelo Falcao Costa Filho on 27/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let userFinish: User = User(name: "Marcelo", image: "User")
    
    let employee: [Employee] = [
        Employee(name: "Caio", age: 28, profession: "Professor", salary: "50.000,00", imageUser: "Employee"),
        Employee(name: "Bruno", age: 29, profession: "Dev iOS", salary: "25.000,00", imageUser: "Employee")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
        tableView.register(UserBasicTableViewCell.nib(), forCellReuseIdentifier: UserBasicTableViewCell.identifier)
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(cars[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employee.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: UserBasicTableViewCell.identifier, for: indexPath) as? UserBasicTableViewCell
            cell?.configCell(model: userFinish)
            return cell ?? UITableViewCell()
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
            cell?.configCellEmployee(model: employee[indexPath.row - 1])
            return cell ?? UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true // vai deixar a gente editar nossa celular, fazer algum momvimento
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // cars.remove(at: indexPath.row)
        tableView.reloadData()
    }// para remover um item do nosso array
}
