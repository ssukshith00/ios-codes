//
//  gradient.swift
//  rideapp2
//
//  Created by Sukshith Shetty on 02/03/20.
//  Copyright © 2020 Sukshith Shetty. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func setGradient(colorOne: UIColor, colorTwo: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
