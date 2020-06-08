//
//  ViewController.swift
//  Skulibrista
//
//  Created by Brenner on 07/06/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var street: UIImageView!
    @IBOutlet weak var player: UIImageView!
    @IBOutlet weak var viewGameOver: UIView!
    @IBOutlet weak var lbTimePlayed: UILabel!
    @IBOutlet weak var lbInstructions: UILabel!
    
    var isMoving = false
    
    lazy var motionManager = CMMotionManager()
    var gameTimer: Timer!
    var startDate: Date!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewGameOver.isHidden = true
        street.frame.size.width = view.frame.width * 2
        street.frame.size.height = view.frame.width * 2
        street.center = view.center
        player.center = view.center
        player.animationImages = []
        
        for i in 0...7 {
            let image = UIImage(named: "player\(i)")!
            player.animationImages?.append(image)
        }
        player.animationDuration = 0.5
        player.startAnimating()
        
        Timer.scheduledTimer(withTimeInterval: 6, repeats: false) { (time) in
            self.start()
        }
    }
    
    func start(){
        lbInstructions.isHidden = true
        viewGameOver.isHidden = true
        isMoving = false
        startDate = Date()
        self.player.transform = CGAffineTransform(rotationAngle:0)
        self.street.transform = CGAffineTransform(rotationAngle: 0)
        
        if motionManager.isDeviceMotionAvailable{
            motionManager.startDeviceMotionUpdates(to: .main) {
                (data, error) in
                if error == nil {
                    if let data = data {
                        print("x", data.gravity.x, "y", data.gravity.y, "z", data.gravity.z)
                        let angle = atan2(data.gravity.x, data.gravity.y) - .pi
                        self.player.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
                        if !self.isMoving {
                            self.checkGameOver()
                        }
                    }
                }
            }
        }
        
        gameTimer = Timer.scheduledTimer(withTimeInterval: 4, repeats: true, block: { (timer) in
            
            self.rotateWorld()
        })
        
    }
    
    func rotateWorld(){
        
        let randomAngle = Double(arc4random_uniform(120))/100 - 0.6
        isMoving = true
        UIView.animate(withDuration: 0.75, animations: {
            self.street.transform = CGAffineTransform(rotationAngle: CGFloat(randomAngle))
        }){(sucess) in
            self.isMoving = false
        }
        
    }
    
    func checkGameOver(){
        let worldAngle = atan2(Double(self.street.transform.a), Double(self.street.transform.b))
        let playerAngle = atan2(Double(self.player.transform.a), Double(self.player.transform.b))
        let difference = abs(worldAngle - playerAngle)
        if difference > 0.25 {
            gameTimer.invalidate()
            viewGameOver.isHidden = false
            motionManager.stopDeviceMotionUpdates()
            let secondsPlayed = round(Date().timeIntervalSince(startDate))
            lbTimePlayed.text = "Você jogou durante \(secondsPlayed) segundos"
        }
    }
    
    @IBAction func playAgain(_ sender: Any) {
        start()
    }
    

}

