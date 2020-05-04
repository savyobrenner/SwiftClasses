//
//  ViewController.swift
//  Lista de Tarefas
//
//  Created by Brenner on 07/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefasUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            
            let dados = tarefa.listar()
            tarefaCampo.text = " "
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
