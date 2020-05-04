//
//  ViewController.swift
//  SuperSenha
//
//  Created by Brenner on 24/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfTotalCharacters: UITextField!
    
    @IBOutlet weak var seCapitalLetters: UISwitch!
    @IBOutlet weak var swNumber: UISwitch!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swCharactersSpecials: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfTotalCharacters.text!){
            passwordViewController.numberOfCharacters = numberOfCharacters
        }
        passwordViewController.userLetter = swLetters.isOn
        passwordViewController.useNumber = swNumber.isOn
        passwordViewController.useSpecialCharacters = swCharactersSpecials.isOn
        passwordViewController.useCapitalLetter = seCapitalLetters.isOn
        view.endEditing(true)
    }


    
}

