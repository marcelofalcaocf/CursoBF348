//
//  ViewController.swift
//  PrimeiroDesafioTextFieldDelegate
//
//  Created by Marcelo Falcao Costa Filho on 12/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var professionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedNextViewButton(_ sender: Any) {
        if let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            
            guard let name = nameTextField.text, let sobrenome = lastNameTextField.text, let idade = ageTextField.text, let profissao = professionTextField.text
            else { return }
            let person: Pessoa = Pessoa(name: name, sobrenome: sobrenome, idade: Int(idade) ?? 0, profissao: profissao)
            
            vc.person = person
            navigationController?.pushViewController(vc, animated: false)
        }
    }
}


//        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
//
//        let person: Pessoa = Pessoa(name: nameTextField.text ?? "", sobrenome: lastNameTextField.text ?? "", idade: Int(ageTextField.text ?? "0") ?? 0, profissao: professionTextField.text ?? "")
//
//        vc?.person = person
//
//        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
