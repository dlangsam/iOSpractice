//
//  FaceView.swift
//  FaceIt
//
//  Created by Devorah Langsam on 9/12/16.
//  Copyright © 2016 Devorah. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var skullRadius: CGFloat{
        return min(bounds.size.width, bounds.size.height) / 2
    }

    var skullCenter: CGPoint{
        return (x: bounds.midX, y: bounds.midY)
    }
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {

        
        let skull = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0.0, endAngle: CGFloat(2*M_PI), clockwise: false)
        skull.lineWidth = 5.0
        UIColor.blueColor().set()
        skull.stroke() 
        
    }
    

}
