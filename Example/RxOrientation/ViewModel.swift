//
//  ViewModel.swift
//  RxOrientation_Example
//
//  Created by Meng Li on 2018/11/15.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import RxSwift

class ViewModel {
    
    private let disposeBag = DisposeBag()
    
    let orientation: Observable<String> = UIDevice.current.rx.orientationDidChange.map {
        $0.description
    }
    
    let simple: Observable<String> = UIDevice.current.rx.isPortrait.map {
        return $0 ? "portrait" : "landscape"
    }
    
}
