//
//  DeviceExtension.swift
//  AchordyTesty
//
//  Created by Batınay Ünsel on 14.01.2023.
//


import Foundation
import UIKit

extension UIDevice {
    public class func isPad() -> Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    public class func isPhone() -> Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
