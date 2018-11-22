//
//  ViewModel.swift
//  RxOrientation_Example
//
//  Created by Meng Li on 2018/11/15.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import RxSwift
import RxOrientation

class ViewModel {
    
    private let disposeBag = DisposeBag()
    
    let orientation: Observable<String> = UIDevice.current.rx.orientation.map {
        $0.description
    }
    
    let simple: Observable<String> = UIDevice.current.rx.isPortrait.map {
        return $0 ? "portrait" : "landscape"
    }
    
}

extension UIDeviceOrientation: CustomStringConvertible {
    
    public var description: String {
        switch self {
        case .unknown:
            return "unknown"
        case .portrait:
            return "portrait"
        case .portraitUpsideDown:
            return "portraitUpsideDown"
        case .landscapeLeft:
            return "landscapeLeft"
        case .landscapeRight:
            return "landscapeRight"
        case .faceUp:
            return "faceUp"
        case .faceDown:
            return "faceDown"
        }
    }
    
}
