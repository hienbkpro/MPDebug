//
//  AppDelegate.swift
//  MPDebug
//
//  Created by Manh Pham on 4/6/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        MPDebugLog.share.start()
        
        return true
    }

}

