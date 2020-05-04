//
//  ViewController.swift
//  Minhas Anotacoes
//
//  Created by Brenner on 07/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let resultadoFinal = UserDefaults.standard.object(forKey: "valorDefault")
    @IBOutlet weak var textoDigitado: UITextView!
    @IBAction func salvarTexto(_ sender: Any) {
        
        
        let textoCapturado = textoDigitado.text
        UserDefaults.standard.set(textoCapturado, forKey: "valorDefault")
        
        let Alerta = UIAlertController.init(title: "Nota Salva", message: "Sua anotação foi salva com sucesso", preferredStyle:.alert)
        let OK = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        Alerta.addAction(OK)
        present(Alerta, animated: true, completion: nil)
        }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoDigitado.text = resultadoFinal as? String
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

