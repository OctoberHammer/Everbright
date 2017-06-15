//
//  SplasScreenViewController.swift
//  Eventbright
//
//  Created by October Hammer on 6/14/17.
//  Copyright © 2017 Ocotober Hammer. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.backgroundColor = UIColor(patternImage: imageLayerForGradientBackground())
		perform(#selector(SplashScreenViewController.showTabBarController), with: nil, afterDelay: 4.0)
    }


    //MARK: -
	//MARK: Show
	func showTabBarController() {
		performSegue(withIdentifier: "showTabBarController", sender: self)
	}
	
	
	
	private func imageLayerForGradientBackground() -> UIImage {
		
		var updatedFrame = self.view.bounds
		// take into account the status bar
		//updatedFrame.size.height += 20
		//0xfebf00 - более темный
		
		let upperColor = UIColor(hue:0.04, saturation:0.76, brightness:0.96, alpha:1.00)
		//0xfcda03 - более СВЕТЛЫЙ
		
		let lowerColor = UIColor(hue:0.08, saturation:0.79, brightness:0.99, alpha:1.00)
		//let layer = CAGradientLayer()
		
		let layer = CAGradientLayer.gradientLayerForBounds(bounds: updatedFrame, upperColor: lowerColor, lowerColor: upperColor)
		//            CAGradientLayer.gradientLayerForBounds(bounds: updatedFrame, startColor: UIColor(), endColor: UIColor())
		layer.bounds = updatedFrame
		
		UIGraphicsBeginImageContext(layer.bounds.size)
		layer.render(in: UIGraphicsGetCurrentContext()!)
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return image!
	}
	
	
	
	
	
	
	
	
	
	
	
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
