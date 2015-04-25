/*
 * YourNavigationController.swift
 * Customizing UINavigationController for transparent
 * transparent navbar and custom font color
 * 
 * Created by amar kanala on 4/24/15.
 *  
 * Usage: (Assuming that you are using storyboard)
 * 1. Create a new swift file and copy the following file.
 * 2. Class name "YourNavigationController" is your preferrence
 * 3. Select Navigation View Controller in the storyboard and click
 *     the "Identity inspector" tab on the right, find "Custom Class" section
 *    and chnage the "class" field with Class name you choose
 * 4. Build and run! your navigationBar is transparent ;)
 * 5. The same file can be used for various other customizations
 * eg: conforming to tranistion delegate UIViewControllerTransitioningDelegate
*/

import UIKit

class YourNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // tintColor: text color inside navigationBar
        self.navigationBar.tintColor = UIColor.blackColor()
        // Setting background image to empty UIImage
        self.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        // resetting shadow on the navigationbar
        self.navigationBar.shadowImage = UIImage()
    }
}