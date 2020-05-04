//
//  TarefasUserDefaults.swift
//  Lista de Tarefas
//
//  Created by Brenner on 07/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class TarefasUserDefaults {
    
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func remover (indice: Int) {
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set( tarefas , forKey: chave)
        
        
    }
    func salvar (tarefa:String){
        tarefas = listar()
        tarefas.append(tarefa)
        UserDefaults.standard.set( tarefas , forKey: chave)
        
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.array(forKey: chave)
        
       if dados != nil {
            
            return dados as! Array<String>
        } else {
            
            return [ ]
        }
    }
    
}
