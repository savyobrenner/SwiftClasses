//
//  DetalhesViewController.swift
//  PassandoDados
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    
    @IBOutlet weak var legendaResultado: UILabel!
    var textoRecebido: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        legendaResultado.text = textoRecebido
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
