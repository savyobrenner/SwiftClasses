//
//  CaraouCoroaViewController.swift
//  Cara Ou Coroa
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class CaraouCoroaViewController: UIViewController {

    
    @IBOutlet weak var caraOuCoroaImage: UIImageView!
    var numeroAleatorio: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        numeroAleatorio = Int(arc4random_uniform(2))
        print(numeroAleatorio)
        
        if numeroAleatorio == 1 {
            
            caraOuCoroaImage.image = #imageLiteral(resourceName: "moeda_coroa")
            
        }else{
            
            caraOuCoroaImage.image = #imageLiteral(resourceName: "moeda_cara")
            
        }
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
