//
//  PasswordGenerato.swift
//  SuperSenha
//
//  Created by Brenner on 24/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import Foundation

class PasswordGenerator{
    
    var numberOfCharacters: Int
    var userLetter: Bool!
    var useNumber: Bool!
    var useCapitalLetter: Bool!
    var useSpecialCharacters: Bool!
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnoprstuvywxz"
    private let specialCharacters = "!@#$%ˆ&*()_=+_><.??//:"
    private let numbers = "0123456789"
    
    init(numberOfCharacters: Int, userLetter: Bool!, useNumber: Bool!, useCapitalLetter: Bool!, useSpecialCharacters: Bool!) {
        
        var numChars = min(numberOfCharacters, 16)
        numChars = max(numChars, 1)
        
        self.numberOfCharacters = numChars
        self.userLetter = userLetter
        self.useNumber = useNumber
        self.useCapitalLetter = useCapitalLetter
        self.useSpecialCharacters = useSpecialCharacters

    }
    
    func generate(total: Int) -> [String] {
        passwords.removeAll()
        
        var universe: String = ""
        
        if userLetter {
            universe += letters
        }
        if useNumber {
           universe += numbers
        }
        if useSpecialCharacters {
           universe += specialCharacters
        }
        if useCapitalLetter {
            universe += letters.uppercased()
        }
        
        let univeseArray = Array(universe)
        
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters{
                let index = Int(arc4random_uniform(UInt32(univeseArray.count)))
                password += String(univeseArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
    }
}
