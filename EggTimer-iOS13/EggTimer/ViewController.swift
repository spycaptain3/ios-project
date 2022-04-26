//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggtime = ["Soft":5, "Medium":7, "Hard":12]
    
    var secondsRemaining:Float = 30
        

    var player: AVAudioPlayer?

    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    var timer = Timer()
    var total:Float = 1.2
    
    var prog:Float = 1.8
    
    var tottime:Float=1.9
    
    @IBOutlet weak var timetext: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
        
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressBar.progress = 0.0

       
        let hardness = (sender as AnyObject).currentTitle
        let har = hardness!!
       // print(eggtime[har]!)
        
        total = Float(eggtime[har]!)
        secondsRemaining = 0.0
        


      timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
          if self.secondsRemaining <= self.total {
                   //print ("\(self.secondsRemaining) seconds")
                   
                   self.tottime = Float(self.eggtime[har]!)
                   
                   
                   self.prog=Float(self.secondsRemaining) / self.tottime
                   
                  // print(self.prog)
                   
                         self.secondsRemaining += 1
                   
                   self.progressBar.progress = self.prog;
              
            //  self.playSound(soundName: "alarm_sound")
              self.playSound()
                  

                   
               } else {
                   Timer.invalidate()
                   self.timetext.text="Done!"
               }
           }
    }
    
}
