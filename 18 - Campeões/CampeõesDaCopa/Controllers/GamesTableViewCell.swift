//
//  GamesTableViewCell.swift
//  CampeõesDaCopa
//
//  Created by Brenner on 04/06/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var ivAway: UIImageView!
    @IBOutlet weak var lbHome: UILabel!
    @IBOutlet weak var lbAway: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(wih game: Game) {
        ivHome.image = UIImage(named:"\(game.home).png")
        ivAway.image = UIImage(named:"\(game.away).png")
        lbHome.text = game.home
        lbAway.text = game.away
        lbScore.text = game.score
    }

}
