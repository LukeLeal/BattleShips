//
//  GameScene.swift
//  BattleShips
//
//  Created by Bruno Omella Mainieri on 5/19/15.
//  Copyright (c) 2015 Bruno Omella. All rights reserved.
//

import AVFoundation
import SpriteKit

class GameScene: SKScene {
    
    var tabuleiro:Tabuleiro!
    var tam:CGFloat = CGFloat(80)
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        tabuleiro = Tabuleiro(x: 8, y: 8, tamanho: tam)
        tabuleiro.position = CGPointMake(self.size.width/2 - tam * 8 / 2, self.size.height * 0.18)
        self.addChild(tabuleiro)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        let synthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: "Água")
        utterance.voice = AVSpeechSynthesisVoice(language: "pt-BR")
        utterance.rate = 0.05
        synthesizer.speakUtterance(utterance)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
