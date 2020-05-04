//
//  DetalhesFilmeViewController.swift
//  Meus Filmes Aula
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit



class DetalhesFilmeViewControle: UIViewController {
    
    
    
    
    @IBOutlet weak var imagemDetalhes: UIImageView!
    @IBOutlet weak var tituloDetalhes: UILabel!
    @IBOutlet weak var descricaoDetalhes: UILabel!
    var filme: Filme!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        imagemDetalhes.image = filme.image
        tituloDetalhes.text = filme.titulo
        descricaoDetalhes.text = filme.descricao

    }
    

}

 
