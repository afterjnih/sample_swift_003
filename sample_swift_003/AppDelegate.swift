//
//  AppDelegate.swift
//  sample_swift_003
//
//  Created by 太田浩二 on 2015/12/26.
//  Copyright © 2015年 太田浩二. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
  var masterViewController: MasterViewController!

	func applicationDidFinishLaunching(aNotification: NSNotification) {
		// Insert code here to initialize your application
		masterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
		
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("bugs") as? NSData {
            masterViewController.bugs = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! [ScaryBugDoc]
        }else{
     		masterViewController.setupSampleBugs()
        }
		window.contentView!.addSubview(masterViewController.view)
		masterViewController.view.frame = (window.contentView as NSView!).bounds
		
		// 3. Set constraints on masterViewoController.view
		masterViewController.view.translatesAutoresizingMaskIntoConstraints = false
		
		let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|[subView]|",
			options: NSLayoutFormatOptions(rawValue: 0),
			metrics: nil,
			views: ["subView" : masterViewController.view])
		let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|[subView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["subView" : masterViewController.view])

	
    	NSLayoutConstraint.activateConstraints(verticalConstraints + horizontalConstraints)
	}

	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
        masterViewController.saveBugs()
	}


}

