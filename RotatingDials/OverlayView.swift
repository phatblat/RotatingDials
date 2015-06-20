//
//  OverlayView.swift
//  RotatingDials
//
//  Created by Ben Chatelain on 6/19/15.
//  Copyright (c) 2015 Ben Chatelain. All rights reserved.
//

import UIKit

class OverlayView: UIView {

    let holeRect = CGRect(x: 125 / 2, y: 30, width: 250, height: 250)

    override func drawRect(rect: CGRect) {
        UIColor.lightGrayColor().setFill()
        UIRectFill(rect)

        let layer = CAShapeLayer()
        let path = CGPathCreateMutable()

        CGPathAddEllipseInRect(path, nil, holeRect)
        CGPathAddRect(path, nil, bounds)

        layer.path = path
        layer.fillRule = kCAFillRuleEvenOdd
        self.layer.mask = layer
    }

}
