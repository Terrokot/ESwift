//
//  UITools.swift
//
//  Created by Egor Tereshonok on 9/23/20.
//

import Foundation
import UIKit

public var topmostController: UIViewController {
    
    var topController = UIApplication.shared.windows.first(where: \.isKeyWindow)?.rootViewController;
    
    while topController?.presentedViewController != nil {
        topController = topController?.presentedViewController;
    }
    
    guard let controller = topController
    else { LogError(); return UIViewController() }
    
    return controller
}

public var keyWindow: UIView {
    
    guard let _window = UIApplication.shared.delegate?.window,
          let window = _window
    else { LogError(); return UIView() }
    
    return window
}

//MARK: UIViewController extension

extension UIViewController {
    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
