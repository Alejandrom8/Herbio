//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//

import UIKit
import PlaygroundSupport

let page = PlaygroundPage.current
let proxy = page.liveView as? PlaygroundRemoteLiveViewProxy

func sendValue(message: String){
    proxy?.send(PlaygroundValue.string(message))
}
//#-end-hidden-code

let str = /*#-editable-code str*/"message"/*#-end-editable-code*/

//#-hidden-code
sendValue(message: str)
//#-end-hidden-code
