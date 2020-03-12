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

/*:
 # Welcome.
 
 Hi and welcome to this easy way to make your own plant.
 
 If you are here, you are one step to the other side, you are going to learn the arts of plantation,
 from the most basics, to the highest level.
 
 Now, you just need to adapt to this enviroment, so here are some usefull instructions:
 
    1. As you have seen, the left side will help you with instructions, while the right side will show you interactive scenes.
    2. Sometimes, below this section, you will find some code with previous instructions of what to do. You can edit it as you want.
    3. Enjoy this travel and investigate on your own more things about to sweeten this knowledge.
 */

let str = /*#-editable-code str*/"message"/*#-end-editable-code*/

/*:
 [**Next Page**](@next)
 */

//#-hidden-code
sendValue(message: str)

//que hacer cuando pasa el nivel.
//PlaygroundPage.current.assessmentStatus = .pass(message: "### You rock! \nTap on your newly created language `ActionView` to see what happens! When you've done that, lets continue to the [**next page**](@next)")
//tambien existe .fail(hints: "pistas para el usuario")
//#-end-hidden-code
