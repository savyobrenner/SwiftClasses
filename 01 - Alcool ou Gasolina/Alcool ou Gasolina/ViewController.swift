//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Brenner on 04/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var resultadoFinal: UILabel!
    @IBAction func botaoCalcular(_ sender: Any) {
        
        if let precAlcool = precoAlcool.text {
            if let precGasol = precoGasolina.text{
                
                let resultado = self.validarCampos(precAlcool: precAlcool, precoGasol: precGasol)
                
                if resultado {
                    
                    self.calcularMelhorPreco(precAlcool: precAlcool, precoGasol: precGasol)
                    
                }else {
                    
                    resultadoFinal.text = "Digite os valores primeiros"
                }
            }
            
            
        }
    }
    
    func calcularMelhorPreco(precAlcool: String, precoGasol: String){
        
        if let valorAlcool = Double(precAlcool){
            if let valorGasolina = Double (precoGasol){
                
                var resultadoOficialFinal = valorAlcool / valorGasolina
                
                if resultadoOficialFinal >= 0.7{
                    
                    self.resultadoFinal.text = "Melhor usar gasolina"
                } else {
                    
                    self.resultadoFinal.text = "Melhor usar Alcool"
                }
            }
            
        }
    }
    
    func validarCampos(precAlcool: String, precoGasol: String) -> Bool{
        
        var camposValidados = true
        var campoInvalido = " "
        
        if precAlcool.isEmpty {
            camposValidados = false
            campoInvalido = "Digite os valores primeiros"
        } else if precoGasol.isEmpty {
            
            camposValidados = false
            campoInvalido = "Digite os valores primeiros"
        }
        return camposValidados
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

