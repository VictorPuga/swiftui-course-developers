//
//  PlaySounds.swift
//  Learn by Doing
//
//  Created by Víctor Manuel Puga Ruiz on 17/12/20.
//

import Foundation
import AVFoundation

// MARK: - Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("Couldn't find \(sound) \(type) file")
    }
  }
}
