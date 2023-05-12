//
//  SafePrintScreenManager.swift
//  SafePrintScreenSwift
//
//  Created by Raphael Torquato on 09/05/23.
//

import Foundation
import UIKit

public class SafePrintScreenManager {
    //MARK: Shared
    public static let shared = SafePrintScreenManager()
    public var _screenRecordDelegate: SafePrintScreenDelegate?
    //MARK: Private
    private var _recordingObservation: NSKeyValueObservation?
    
    private init() {
        
    }
    
    //MARK: Functions
    
    public func sPrintScreenShot(`for` window: UIWindow) {
        window.setSafePrintScreenCaptureProtection()
    }
    public func sPrintScreenShot(`for` view: UIView) {
        view.setSafePrintScreenCaptureProtection()
    }
    
    public func disableSafePintScreenShot(`for` window:UIWindow) {
        window.removeGTView()
    }
    
    public func disableSafePintScreenShot(`for` view:UIView) {
        view.removeGTView()
    }
    
    public func listenerForScreenReports() {
        guard var _recordingObservation = _recordingObservation else { return }
        _recordingObservation = UIScreen.main.observe(\UIScreen.isCaptured, options: [.new]) { [weak self] screen, change in
            let isRecording = change.newValue ?? false
            
            if isRecording {
                self!._screenRecordDelegate?.screen(screen, didRecordEnded: isRecording)
            } else {
                self!._screenRecordDelegate?.screen(screen, didRecordEnded: isRecording)
            }
        }
    }
    
    deinit {
        _screenRecordDelegate = nil
    }
}
