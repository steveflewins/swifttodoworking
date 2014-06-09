//
//  AppDelegate.swift
//  tutorialTodo
//
//  Created by Eric on 6/7/14.
//  Copyright (c) 2014 Simple Guy. All rights reserved.
//

// Bring in UIKit, which is part of Cocoa Touch
import UIKit


@UIApplicationMain // This is some kind of attribute. I think it specifies this method as the entry point. Not sure what it means: http://stackoverflow.com/questions/24020000/subclass-uiapplication-with-swift

// Create a class with a superclass `UIResponder`
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
  var window: UIWindow? // Declare, but do not initialize, a variable of type `Optional UIWindow`
  // The UIWindow is at the top of the view heirarchy

  
  // The application object manages the app event loop and coordinates other high-level app behaviors. This class, defined in the UIKit framework, doesn’t require you to write any additional code to get it to do its job.
  
  // As your app starts up, the application object calls defined methods on the app delegate to give your custom code a chance to do its job—that’s where the interesting behavior for an app is executed.
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
  
    
    // Initialize a UI Window
//    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    
    // Override point for customization after application launch.
//    self.window!.backgroundColor = UIColor.greenColor() //UIColor.whiteColor()
//    self.window!.makeKeyAndVisible()
    
    
    
    return true
  }
  
  

  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

