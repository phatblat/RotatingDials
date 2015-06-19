//
//  CircleViewController.swift
//  RotatingDials
//
//  Created by Ben Chatelain on 6/19/15.
//  Copyright (c) 2015 Ben Chatelain. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {

    @IBOutlet weak var orangeCircle: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        orangeCircle.layer.cornerRadius = view.bounds.width / 3
    }

}
