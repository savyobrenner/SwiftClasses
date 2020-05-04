//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Brenner on 24/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tfPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var userLetter: Bool!
    var useNumber: Bool!
    var useCapitalLetter: Bool!
    var useSpecialCharacters: Bool!
    
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, userLetter: userLetter, useNumber: useNumber, useCapitalLetter: useCapitalLetter, useSpecialCharacters: useSpecialCharacters)
   generatePasswords()
        }
    func generatePasswords(){
        tfPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tfPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
           for password in passwords{
           tfPasswords.text.append(password + "\n\n")
            
        }
    }

    @IBAction func generate(_ sender: Any) {
        generatePasswords()
    }

}
