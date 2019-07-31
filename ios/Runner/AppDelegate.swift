import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let controller : FlutterViewController = window.rootViewController as! FlutterViewController
    let batteryChannel = FlutterMethodChannel(name: "samples.flutter.io/battery", binaryMessenger: controller)
    
    batteryChannel.setMethodCallHandler { (call, result) in
        if "getBatteryLevel" == call.method {
            FlutterTools.receiveBatteryLevel(result: result)
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
    
    
    
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
 
    
    
    
    
}
