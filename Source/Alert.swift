//
//  Alert.swift
//
//  Created by Egor Tereshonok on 10/28/20.
//

import Foundation
import UIKit

public class Alert {
    
    fileprivate static var currentAlert: UIAlertController?
    
    private init() {}
    
    public static func dismiss() {
        currentAlert?.dismiss(animated: false, completion: nil)
        currentAlert = nil
    }
    
    public static func displayAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        topmostController.present(alertController, animated: true, completion: nil)
    }
}
