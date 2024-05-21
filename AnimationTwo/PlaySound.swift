//
//  PlaySound.swift
//  AnimationTwo
//
//  Created by Abdusamad Mamasoliyev on 21/05/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
           audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
           audioPlayer?.play()
        } catch  {
           print("can not find sound file")
        }
    }
}
