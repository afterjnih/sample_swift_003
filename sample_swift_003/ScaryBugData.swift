//
//  ScaryBugData.swift
//  sample_swift_003
//
//  Created by 太田浩二 on 2015/12/26.
//  Copyright © 2015年 太田浩二. All rights reserved.
//

import Cocoa

class ScaryBugData: NSObject {
	var title: String
	var rating: Double
	
	override init() {
		self.title = String()
		self.rating = 0.0
	}
	
	init(title: String, rating: Double) {
		self.title = title
		self.rating = rating
	}
}
