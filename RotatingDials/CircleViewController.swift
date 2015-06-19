//
//  CircleViewController.swift
//  RotatingDials
//
//  Created by Ben Chatelain on 6/19/15.
//  Copyright (c) 2015 Ben Chatelain. All rights reserved.
//

import CoreGraphics
import UIKit

class CircleViewController: UIViewController {

    @IBOutlet weak var orangeCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    @IBOutlet weak var blueCircle: UIView!

    let diameter: CGFloat = 250

    override func viewDidLoad() {
        super.viewDidLoad()

        orangeCircle.layer.cornerRadius = diameter / 2
        greenCircle.layer.cornerRadius = diameter / 2
        blueCircle.layer.cornerRadius = diameter / 2

        let anchorPoint = view.layer.anchorPoint
        println("anchorPoint: \(anchorPoint)")
        view.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5666)
    }

    @IBAction func didTapCircleContainerView(sender: AnyObject) {
        println("didTapCircleContainerView")

        UIView.animateWithDuration(0.5) { () -> Void in

            let radians = self.degreesToRadians(120)
            let transform = CGAffineTransformRotate(self.view.transform, CGFloat(radians))
            self.view.transform = transform

        }

    }

    private func degreesToRadians(angle: Double) -> Double {
        return angle / 180.0 * M_PI
    }
}
