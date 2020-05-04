//
//  TableViewController.swift
//  Signos
//
//  Created by Brenner on 06/01/2020.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var dados: [String] = []
    var significadoDados: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
         
        dados.append("Aries")
        dados.append("Aquario")
        dados.append("Capricornio")
        dados.append("Gemeos")
        dados.append("Cancer")
        dados.append("Leao")
        dados.append("Virgem")
        dados.append("Libra")
        dados.append("Touro")
        dados.append("Escorpiao")
        dados.append("Peixes")
        dados.append("Sagitário")
        
        significadoDados.append("Satanaries")
        significadoDados.append("Sem prestar")
        significadoDados.append("Capricorno")
        significadoDados.append("Ciumento e chato com relacionamento")
        significadoDados.append("blablabla")
        significadoDados.append("blablabla2")
        significadoDados.append("blablabla3")
        significadoDados.append("blablabla4")
        significadoDados.append("blablabla5")
        significadoDados.append("blablabla6")
        significadoDados.append("blablabla7")
        significadoDados.append("blablabla8")
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dados.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)

        cell.textLabel?.text = dados[ indexPath.row ]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadoDados[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present( alertaController, animated: true, completion: nil)
        //print( dados[indexPath.row] )
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
