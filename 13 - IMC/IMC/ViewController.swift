//
//  ViewController.swift
//  IMC
//
//  Created by Brenner on 09/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var viewResultado: UIView!
    @IBOutlet weak var showImafwe: UIImageView!
    @IBOutlet weak var pesoRe: UITextField!
    @IBOutlet weak var alturaRe: UITextField!
    @IBOutlet weak var resultadoIMC: UILabel!
    var IMC: Double = 0
    
    @IBAction func calcularIMC(_ sender: Any) {
   
               if let peso = Double(pesoRe.text!), let altura = Double(alturaRe.text!) {
                   
                   IMC = peso / (altura * altura)
                showResults()
               }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    func showResults(){
        
        var results: String = ""
        var image: UIImage
        
        switch IMC {
            case 0..<16:
                results = "Magreza"
                image = #imageLiteral(resourceName: "magreza")
            case 16..<18.5:
                results = "Abaixo do peso"
                image = #imageLiteral(resourceName: "abaixo")
            case 18.5..<25:
                results = "Peso Ideal"
                image = #imageLiteral(resourceName: "ideal")
                case 25..<30:
                results = "Sobrepeso"
                image = #imageLiteral(resourceName: "sobre")
            default:
                results = "Obesidade"
                image = #imageLiteral(resourceName: "obesidade")
            }
        resultadoIMC.text = "\(Int (IMC)): \(results)"
        showImafwe.image = image
        self.viewResultado.isHidden = false
        view.endEditing(true)
    }

}

