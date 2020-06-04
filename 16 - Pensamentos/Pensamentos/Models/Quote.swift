//
//  Quote.swift
//  Pensamentos
//
//  Created by Brenner on 04/06/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import Foundation

struct Quote: Codable {
    let quote: String
    let author: String
    let image: String
    
    var quoteFomatted:String {
        return " “"+quote+"” "
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
}
