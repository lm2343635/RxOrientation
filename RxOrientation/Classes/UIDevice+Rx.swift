import UIKit
import RxSwift
import RxCocoa

extension RxSwift.Reactive where Base: UIDevice {
    
    public var orientationDidChange: Observable<UIDeviceOrientation> {
        return NotificationCenter.default.rx.notification(UIDevice.orientationDidChangeNotification).map { notification in
             UIDevice.current.orientation
        }.distinctUntilChanged()
    }
    
    public var isPortrait: Observable<Bool> {
        return orientationDidChange.map {
            $0 == .portrait || $0 == .portraitUpsideDown
        }.distinctUntilChanged()
    }
    
    public var isLandscape: Observable<Bool> {
        return orientationDidChange.map {
            $0 == .landscapeLeft || $0 == .landscapeRight
        }.distinctUntilChanged()
    }
    
}
