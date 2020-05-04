//
//  ViewController.swift
//  Alertas
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numeroVezes: UILabel!
    
    var quatVezes: Int = 0
    
    
    @IBAction func pressionarBotao(_ sender: Any) {
        
        
        let Alerta1 = UIAlertController(title: "Botão Pressionado", message: "Você pressinou o botão pela primeira vez", preferredStyle: .alert)
        let AlertaOu = UIAlertController(title: "Botão Pressionado mais uma vez.   " + "Deseja continuar a ação", message: "Você pressinou o botão mais uma vez", preferredStyle: .alert)
        let Confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let Cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { (cancelar) in
            
            let valorCancelar = self.quatVezes - 1
            print("A acao foi executada")
            self.numeroVezes.text = String(valorCancelar)
            self.quatVezes = valorCancelar
        }
        
        //let Cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        Alerta1.addAction(Confirmar)
        //Alerta1.addAction(Cancelar)
        AlertaOu.addAction(Confirmar)
        AlertaOu.addAction(Cancelar)
        
        if quatVezes == 0 {
            
            present(Alerta1, animated: true,  completion: nil )
          self.quatVezes = self.quatVezes + 1
        } else {
            
            quatVezes = quatVezes + 1
            present(AlertaOu, animated: true, completion: nil)
        }
        if quatVezes > 10 {
            
            self.quatVezes = 0
        }
        numeroVezes.text = String(quatVezes)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

