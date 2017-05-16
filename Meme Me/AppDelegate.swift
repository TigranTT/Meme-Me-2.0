//
//  AppDelegate.swift
//  Meme Me
//
//  Created by Tigran Tshorokhyan on 4/14/17.
//  Copyright © 2017 Tigran Tshorokhyan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var memes = [Meme]()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }


}

