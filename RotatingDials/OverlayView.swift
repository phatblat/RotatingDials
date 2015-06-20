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

    // MARK: - UIView

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

    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        // Let taps on the hole pass through
        if holeRect.contains(point) {
            return nil
        }
        return super.hitTest(point, withEvent: event)
    }

}
