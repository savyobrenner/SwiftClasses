//
//  ViewController.swift
//  Loteria
//
//  Created by Brenner on 11/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit


enum GameType: String {
    case megasena = "Mega-sena"
    case quina = "Quina"
}

infix operator >--<
func >--<(total: Int, universe: Int) -> [Int]{
    var result: [Int] = []
    while result.count < total {
        
        let randomNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randomNumber){
            result.append(randomNumber)
        }
    }
    return result.sorted()
}
class ViewController: UIViewController {

    
    @IBOutlet weak var lbGameType: UILabel!
    @IBOutlet weak var scGameType: UISegmentedControl!
    @IBOutlet var balls: [UIButton]!

    
    @IBAction func generateGame() {
        switch scGameType.selectedSegmentIndex {
        case 0:
            showNumbers(for: .megasena)
        default:
            showNumbers(for: .quina)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        showNumbers(for: .megasena)
        
        // Do any additional setup after loading the view.
    }
    func showNumbers (for type: GameType ) {
        lbGameType.text = type.rawValue
        var game: [Int] = []
        switch type {
            case .megasena:
                game = 6 >--< 60
                balls.last!.isHidden = false
            case .quina:
                game = 5 >--< 80
            balls.last!.isHidden = true
        }
        for (index, game) in game.enumerated(){
            
            balls[index].setTitle("\(game)", for: .normal)
            
        }
    }
    func showAlerts(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let acaoConfirmar = UIAlertAction(title: "Ok!", style: .default, handler: nil)
            alert.addAction(acaoConfirmar)
            present(alert, animated: true, completion: nil)
        }
    
    @IBAction func luckysBrenner(_ sender: Any) {
        let day = Calendar.current.component(.day, from: Date())
        let month = Calendar.current.component(.month, from: Date())
        let hour = Calendar.current.component(.hour, from: Date())
        let minute = Calendar.current.component(.minute, from: Date())
        var monthR = String(month)
        switch month {
            case 1:
            monthR  = "Janeiro"
            case 2:
            monthR  = "Fervereiro"
            case 3:
            monthR  = "Março"
            case 4:
            monthR  = "Abril"
            case 5:
            monthR  = "Maio"
            case 6:
            monthR  = "Junho"
            case 7:
            monthR  = "Julho"
            case 8:
            monthR  = "Agosto"
            case 9:
            monthR  = "Setembro"
            case 10:
            monthR  = "Outubro"
            case 11:
            monthR  = "Novembro"
        default:
            monthR  = "Dezembro"
            }
        
        let numberAlerta = Int(arc4random_uniform(7))
        
        
        if numberAlerta == 3 {
            self.showAlerts(title: "Brenner da Sorte", message: "Olha, é o seguinte essa foi por pouco, hoje é dia \(day) de \(monthR), já já é \(hour+1)h e você ta tentando a sorte, o que isso significa? Talvez nada. Voce me invocou no minuto \(minute)! Não acho que é um bom sinal. O Brenner da Sorte não recomenda jogar esses números! 🧐 ")
        } else if numberAlerta == 4 {
            self.showAlerts(title: "Brenner da Sorte", message: "O Brenner da Sorte que habita em mim saúda o Brenner da Sorte que habita em você. Hoje é dia \(day) de \(monthR) o dia em que o Planeta não descoberto se alinha com a Terra. O destino jogou a seu favor, a final o minuto \(minute) da muita sorte quando está acontecendo esse alinhamento! O Brenner da Sorte recomenda que você jogue esses números, só nao faça isso depois das \(hour + 3) horas, porque ai já era! Faça bom proveito da sorte 😅")
        } else {
            
            self.showAlerts(title: "Brenner da Sorte", message: "Sem recomendações do Brenner da sorte! Tente novamente em outro horário! 😁")
            showNumbers(for: .megasena)
            
        }
    }
    

}

