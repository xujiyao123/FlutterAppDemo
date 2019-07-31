//
//  FlutterTools.swift
//  Runner
//
//  Created by 徐继垚 on 2019/7/31.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import Foundation

class FlutterTools {
    
    
    static func receiveBatteryLevel(result : FlutterResult) -> Void {
        let device = UIDevice.current;
        device.isBatteryMonitoringEnabled = true
        if device.batteryState == .unknown {
            result(FlutterError(code: "unavailable", message: "电池信息不可用", details: nil))
        }else {
            result(Int(device.batteryLevel * 100))
        }
    }
    
}



