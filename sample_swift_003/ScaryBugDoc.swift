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
    
    required convenience init(coder decoder: NSCoder) {
        self.init()
        self.data = decoder.decodeObjectForKey("data") as! ScaryBugData
        self.thumbImage = decoder.decodeObjectForKey("thumbImage") as! NSImage?
        self.fullImage = decoder.decodeObjectForKey("fullImage") as! NSImage?
    }
}

extension ScaryBugDoc: NSCoding {
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.data, forKey: "data")
        coder.encodeObject(self.thumbImage, forKey: "thumbImage")
        coder.encodeObject(self.fullImage, forKey: "fullImage")
    }
}
