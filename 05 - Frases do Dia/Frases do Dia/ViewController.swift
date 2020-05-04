//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Brenner on 03/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayFrase: UILabel!
    
    @IBAction func novaFrase(_ sender: Any) {
        var frases: [String] = [];
        frases.append("Seja feliz. A base de remédios");
        frases.append("Potencial. Nem todo mundo será Astronauta quando crescer!");
        frases.append("Esforço. Plágio economiza tempo!");
        frases.append("A inteligência artificial não é páreo para a estupidez natural!");
        frases.append("Saboreie os momentos sob os holofotes. Eles não irão durar muito!");
        frases.append("Se você não conseguir de primeira, remova todas as evidências de que você ao menos tentou!");
        frases.append("Sexta feira! O melhor dia para invejar pessoas felizes..");
        frases.append("Sonhos são como arco-íris. Somente os bobos correm atrás deles!");
        frases.append("Se você vai se atrasar, então se atrase de verdade. Não dois minutinhos. Atrase-se uma hora e saboreie seu café da manhã!");
        frases.append("Sua cara metade virou gay!");
        let numeroAle = arc4random_uniform(10);
        displayFrase.text = frases[Int(numeroAle)];
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

