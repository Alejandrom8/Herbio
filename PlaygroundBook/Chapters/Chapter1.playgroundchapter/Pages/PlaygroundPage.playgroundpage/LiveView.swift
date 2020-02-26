//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Instantiates a live view and passes it to the PlaygroundSupport framework.
//

import UIKit
import PlaygroundSupport

class IntroViewController: UIViewController, UITextFieldDelegate{
    
    var textField: UITextField!
    var label: UILabel!
    
    override func loadView(){
        let sceneView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        sceneView.backgroundColor = .blue
        
        textField = UITextField(frame: CGRect(x: 5, y: 5, width: 150, height: 30))
        textField.backgroundColor = .white
        textField.textColor = .black
        sceneView.addSubview(textField)
        
        label = UILabel(frame: CGRect(x: 5, y: 40, width: 150, height: 30))
        label.backgroundColor = .green
        sceneView.addSubview(label)
        
        textField.addTarget(self, action: #selector(updateText), for: UIControl.Event.editingChanged)
        
        self.view = sceneView
    }
    
    @objc func updateText(){
        self.label.text = textField.text
    }
}

// Instantiate a new instance of the live view from the book's auxiliary sources and pass it to PlaygroundSupport.
PlaygroundPage.current.liveView = IntroViewController()
