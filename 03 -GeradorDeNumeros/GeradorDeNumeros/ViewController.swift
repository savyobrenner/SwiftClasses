//
//  ViewController.swift
//  GeradorDeNumeros
//
//  Created by Brenner on 03/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mostrarNumero: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        
        var numeroAleatorio = arc4random_uniform(11);
        mostrarNumero.text = String(numeroAleatorio);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

