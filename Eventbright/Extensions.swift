//
//  Extensions.swift
//  Eventbright
//
//  Created by October Hammer on 6/14/17.
//  Copyright © 2017 Ocotober Hammer. All rights reserved.
//

import Foundation
import UIKit

extension CAGradientLayer {
	class func gradientLayerForBounds(bounds: CGRect, upperColor: UIColor, lowerColor: UIColor) -> CAGradientLayer {
		let layer = CAGradientLayer()
		layer.frame = bounds
		//layer.colors = [UIColor.orangeColor().CGColor, UIColor.yellowColor().CGColor]
		layer.colors = [upperColor.cgColor, lowerColor.cgColor];
		return layer
	}
}



extension CAGradientLayer {
	
	func backgroundGradientColor() -> CAGradientLayer {
		let topColor = UIColor(red: (191/255.0), green: (191/255.0), blue:(191/255.0), alpha: 1)
		let bottomColor = UIColor(red: (64/255.0), green: (64/255.0), blue:(64/255.0), alpha: 1)
		
		let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
		let gradientLocations: [Float] = [0.0, 1.0]
	
		
		//gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
		
		
		let gradientLayer: CAGradientLayer = CAGradientLayer()
		gradientLayer.colors = gradientColors
		//gradientLayer.locations = gradientLocations as [NSNumber]
		gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
		gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
		
		return gradientLayer
		
	}
}
