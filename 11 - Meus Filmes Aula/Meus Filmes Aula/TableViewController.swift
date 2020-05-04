//
//  TableViewController.swift
//  Meus Filmes Aula
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007", descricao: "Descricao 1", image: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "Descricao 2", image: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
  
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descricao 3", image: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "Descricao 4", image: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "Descricao 5", image: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "Descricao 6", image: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de emoção", descricao: "Descricao 7", image: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "Descricao 8", image: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "Descricao 9", image: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "Descricao 10", image: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
        

    }
    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! FilmeCelula
        
        let filme: Filme = filmes [ indexPath.row ]
        
        cell.filmeImageView.image = filme.image
        cell.tituloLabel.text = filme.titulo
        cell.descricaoLabel.text = filme.descricao
        
        //cell.filmeImageView.layer.cornerRadius = 40
        //cell.filmeImageView.clipsToBounds = true
        /*cell.textLabel?.text = filme.titulo
        cell.imageView?.image = filme.image*/

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalhesFilmes"{
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let filmeSelecionado = self.filmes [ indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewControle
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
