//
//  SafePrintScreenDelegate.swift
//  SafePrintScreenSwift
//
//  Created by Raphael Torquato on 09/05/23.
//

import Foundation
import UIKit

public protocol SafePrintScreenDelegate {
    func screen(_ screen: UIScreen, didRecordStarted isRecording: Bool)
    func screen(_ screen: UIScreen, didRecordEnded isRecording: Bool)
}
