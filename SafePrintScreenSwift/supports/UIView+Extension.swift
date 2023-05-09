//
//  UIView+Extension.swift
//  SafePrintScreenSwift
//
//  Created by Raphael Torquato on 09/05/23.
//

import Foundation
import UIKit

public extension UIView {
    
    struct Constants {
        static var tFieldTagIdentifier: Int {   Int.max    }
    }
    
    func setSafePrintScreenCaptureProtection() {
        guard superview != nil else {
            for subview in subviews {
                subview.setSafePrintScreenCaptureProtection()
            }
            return
        }
        
        let gTField = UITextField()
        gTField.backgroundColor = .red
        gTField.translatesAutoresizingMaskIntoConstraints = false
        gTField.tag = Constants.tFieldTagIdentifier
        gTField.isSecureTextEntry = true
        
        addSubview(gTField)
        gTField.isUserInteractionEnabled = false
        sendSubviewToBack(gTField)
        
        layer.superlayer?.addSublayer(gTField.layer)
        gTField.layer.sublayers?.first?.addSublayer(layer)
        
        gTField.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        gTField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        gTField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        gTField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
    }
    
    func removeGTView() {
        guard let gView = subviews.first(where:{$0.tag == Constants.tFieldTagIdentifier }) else {
            return
        }
        gView.removeFromSuperview()
    }
}
