//
//  ViewController.swift
//  Coversores
//
//  Created by Brenner on 09/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelMainUnit: UILabel!
    
    @IBOutlet weak var labelResultUnit: UILabel!
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var btUnit2: UIButton!
    @IBOutlet weak var btUnit1: UIButton!
    @IBOutlet weak var textFieldValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showNextUnit(_ sender: UIButton) {
        
        switch labelMainUnit.text {
        case "Temperatura":
            labelMainUnit.text = "Massa"
            btUnit1.setTitle("Kilograma", for: .normal)
            btUnit2.setTitle("Libras", for: .normal)
            case "Massa":
            labelMainUnit.text = "Moeda"
            btUnit1.setTitle("Real", for: .normal)
            btUnit2.setTitle("Dólar", for: .normal)
            case "Moeda":
            labelMainUnit.text = "Distância"
            btUnit1.setTitle("Metro", for: .normal)
            btUnit2.setTitle("Kilometro", for: .normal)
        default:
            labelMainUnit.text = "Temperatura"
            btUnit1.setTitle("Celsius", for: .normal)
            btUnit2.setTitle("Farenheint", for: .normal)
        }
        
        convert(nil)
    }
    @IBAction func convert(_ sender: UIButton?) {
        
        if let sender = sender {
            if sender == btUnit1{
                btUnit2.alpha = 0.5
            } else {
                btUnit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
         
        switch labelMainUnit.text {
                case "Temperatura":
                calTemperature()
                case "Massa":
                calcMass()
                case "Moeda":
                calcCurrency()
                case "Distância":
                calcDistance()
              default:
                calTemperature()
            }
        view.endEditing(true)
        let result = Double (labelResult.text!)!
        labelResult.text = String(format: "%.2f", result)
    }
    
    func calTemperature(){
        guard let temperature = Double(textFieldValue.text!) else {return}
       
        if btUnit1.alpha == 1.0 {
            labelResultUnit.text = "Farenheint"
            labelResult.text = String (temperature * 1.8 + 32.0)
        }else {
            labelResultUnit.text = "Celsius"
            labelResult.text = String ((temperature - 32) / 1.8)
        }
        }
    func calcMass (){
        guard let mass = Double(textFieldValue.text!) else {return}
            
             if btUnit1.alpha == 1.0 {
                 labelResultUnit.text = "Libra"
                labelResult.text = String (mass / 2.2046)
             }else {
                 labelResultUnit.text = "Kilograma"
                labelResult.text = String (mass * 2.2046)
             }
    }
    func calcCurrency(){
        guard let currency = Double(textFieldValue.text!) else {return}
        
         if btUnit1.alpha == 1.0 {
             labelResultUnit.text = "Dólar"
            labelResult.text = String (currency / 4.20)
         }else {
             labelResultUnit.text = "Real"
            labelResult.text = String (currency * 4.20)
         }
    }
    func calcDistance(){
        guard let distance = Double(textFieldValue.text!) else {return}
        
         if btUnit1.alpha == 1.0 {
             labelResultUnit.text = "Kilomento"
            labelResult.text = String (distance / 1000.0)
         }else {
             labelResultUnit.text = "Metro"
            labelResult.text = String (distance * 1000.0)
         }
    }
    
    
}

