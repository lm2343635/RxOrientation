//
//  ViewController.swift
//  RxOrientation
//
//  Created by lm2343635 on 11/03/2018.
//  Copyright (c) 2018 lm2343635. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(changeOrientation), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc private func changeOrientation() {
        print("UIDevice.current.orientation = \(UIDevice.current.orientation.rawValue)")
    }

}

