//
//  ViewController.swift
//  RxOrientation
//
//  Created by lm2343635 on 11/03/2018.
//  Copyright (c) 2018 lm2343635. All rights reserved.
//

import UIKit
import RxSwift
import RxOrientation

class ViewController: UIViewController {
    
    @IBOutlet weak var orientationLabel: UILabel!
    @IBOutlet weak var simpleLabel: UILabel!
    
    private var viewModel: ViewModel!
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
        viewModel.orientation.bind(to: orientationLabel.rx.text).disposed(by: disposeBag)
        viewModel.simple.bind(to: simpleLabel.rx.text).disposed(by: disposeBag)
    }
    
}

