//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  An auxiliary source file which is part of the book-level auxiliary sources.
//  Provides the implementation of the "always-on" live view.
//

import UIKit
import PlaygroundSupport

@objc(Book_Sources_LiveViewController)
public class LiveViewController: UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer {
    
    @IBOutlet weak var plant: UIImageView!
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @IBAction func startAnimation(_ sender: UIButton){
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: { self.plant.alpha = 0.5 }, completion: {
            (finished: Bool) -> Void in
            
            self.plant.image = UIImage(named:"planta_1_2_1")
            let screenSize: CGRect = UIScreen.main.bounds
            self.plant.frame = CGRect(x: 0, y: 0, width: 50, height: screenSize.height * 0.2)

            
            UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: { self.plant.alpha = 1.0 }, completion: nil)
        })
    }
    
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
