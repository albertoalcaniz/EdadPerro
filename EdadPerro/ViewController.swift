//
//  ViewController.swift
//  EdadPerro
//
//  Created by Alberto Alcañiz Díaz-Rullo on 7/6/18.
//  Copyright © 2018 Marduk. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTexField: UITextField!
    @IBOutlet weak var textoFinal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTexField.delegate = self

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //Ocultar el teclado
        view.endEditing(true)
    }
    
    @IBAction func calcularEdad(_ sender: Any) {
        if myTexField.text != "" {
            let edad = 7 * Int(myTexField.text!)!
            textoFinal.text = "Edad perro: \(edad)"
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
