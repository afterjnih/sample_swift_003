//
//  ScaryBugDoc.swift
//  sample_swift_003
//
//  Created by 太田浩二 on 2015/12/26.
//  Copyright © 2015年 太田浩二. All rights reserved.
//

import Cocoa

class ScaryBugDoc: NSObject {
	var data: ScaryBugData
	var thumbImage: NSImage?
	var fullImage: NSImage?
	
	override init() {
		self.data = ScaryBugData()
	}
	
	init(title: String, rating: Double, thumbImage: NSImage?, fullImage: NSImage?) {
		self.data = ScaryBugData(title: title, rating: rating)
		self.thumbImage = thumbImage
		self.fullImage = fullImage
	}
}
