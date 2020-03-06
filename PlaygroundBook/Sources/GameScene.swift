//
//  GameScene.swift
//  Book_Sources
//
//  Created by UNAM FCA 03 on 06/03/20.
//

import SpriteKit

class GameScene: SKScene{
    
    let label = SKLabelNode(text: "Hello SpriteKit!")
    
    override func didMove(to view: SKView) {
        addChild(label)
        label.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
    }
}
