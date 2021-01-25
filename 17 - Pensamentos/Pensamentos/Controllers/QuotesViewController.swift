//
//  ViewController.swift
//  Pensamentos
//
//  Created by Brenner on 04/06/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {
    
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var ivPhotoBg: UIImageView!
    @IBOutlet weak var lbQuotes: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    
    let quoteManager = QuotesManager()
    var timer: Timer?
    let config = Configuration.shared
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Refresh"), object: nil, queue: nil) { (notification) in
            self.formatView()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepareQuote()
    }
    func formatView(){
        view.backgroundColor = config.colorScheme == 0 ? .white : UIColor(red: 156/255, green: 68/255, blue: 15/255, alpha: 1.0)
        lbQuotes.textColor = config.colorScheme == 0 ? .black : .white
        lbAuthor.textColor = config.colorScheme == 0 ? UIColor(red: 192/255, green: 96/255, blue: 49/255, alpha: 1.0) : .yellow
        
        prepareQuote()
    }
    
    
    func prepareQuote(){
        timer?.invalidate()
        if config.autoRefresh {
            Timer.scheduledTimer(withTimeInterval: config.timeInterval, repeats: true) { (timer) in
                self.showRandomQuote()
            }
        }
        showRandomQuote()
    }
    
    func showRandomQuote(){
        
        let quote = quoteManager.getRandomQuote()
        lbQuotes.text = quote.quote
        lbAuthor.text = quote.author
        ivPhoto.image = UIImage(named: quote.image)
        ivPhoto.image = ivPhoto.image
        
        lbQuotes.alpha = 0.0
        lbAuthor.alpha = 0.0
        ivPhoto.alpha = 0.0
        ivPhotoBg.alpha = 0.0
        lcTop.constant = 50
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 2.5) {
            self.lbQuotes.alpha = 1.0
            self.lbAuthor.alpha = 1.0
            self.ivPhoto.alpha = 1.0
            self.ivPhotoBg.alpha = 0.25
            self.lcTop.constant = 10
            self.view.layoutIfNeeded()
        }
        
        
    }
    
    
    @IBOutlet weak var lcTop: NSLayoutConstraint!
    
    
}

