//
//  ViewController.swift
//  Xylophone
//
//  Created by Sévio on 18/06/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        //Reduces the sender's (the button that got pressed) opacity to half.
          sender.alpha = 0.5
        print("Start")

          //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
              print("End")
          }
        
        print(sender.currentTitle!)
        
        playSound(soundName: sender.currentTitle!)    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


