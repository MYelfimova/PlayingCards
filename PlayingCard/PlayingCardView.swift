//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by Maria Yelfimova on 2/1/20.
//

import UIKit

class PlayingCardView: UIView {

    override func draw(_ rect: CGRect) {
        
        if let _ = UIGraphicsGetCurrentContext() {
            
            let path = UIBezierPath()
            path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
            path.lineWidth = 5.0
            UIColor.green.setFill()
            UIColor.red.setStroke()
            path.stroke()
            path.fill()
            
        }
    }

}
