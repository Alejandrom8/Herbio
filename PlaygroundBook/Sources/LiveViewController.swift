//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  An auxiliary source file which is part of the book-level auxiliary sources.
//  Provides the implementation of the "always-on" live view.
//

import UIKit
import PlaygroundSupport
import SpriteKit

@objc(Book_Sources_LiveViewController)
public class LiveViewController: UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer {

//    public override func viewDidLoad() {
//        let scene = GameScene(size: view.frame.size)
//        let skView = view as! SKView
//        skView.presentScene(scene)
//    }
    
    public func receive(_ externalMessage: PlaygroundValue) {
        // Implement this method to receive messages sent from the process running Contents.swift.
        // This method is *required* by the PlaygroundLiveViewMessageHandler protocol.
        // Use this method to decode any messages sent as PlaygroundValue values and respond accordingly.
    
        switch externalMessage{
            case let .string(message):
                print(message)
            default:
                return
        }
    }
}
