//
//  WorldCupUIViewController.swift
//  CampeõesDaCopa
//
//  Created by Brenner on 04/06/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class WorldCupUIViewController: UIViewController {
    
    var worldCup: WorldCup!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "WorldCup \(worldCup.year)"
        ivWinner.image = UIImage(named: "\(worldCup.winner).png")
        ivVice.image = UIImage(named: "\(worldCup.vice).png")
        lbWinner.text = worldCup.winner
        lbVice.text = worldCup.vice
        lbScore.text = "\(worldCup.winnerScore) X \(worldCup.viceScore)"
        // Do any additional setup after loading the view.
    }

}

extension WorldCupUIViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath) as! GamesTableViewCell
        
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        
        cell.prepare(wih: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let match = worldCup.matches[section]
        return match.stage
    }
    
    
    
}

extension WorldCupUIViewController: UITableViewDelegate {
    
}
