//
//  File.swift
//  Meus Filmes Aula
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var image: UIImage!
    
    init(titulo: String, descricao: String, image: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.image = image
    }
}

