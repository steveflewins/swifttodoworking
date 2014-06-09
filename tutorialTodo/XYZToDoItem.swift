//
//  XYZToDoItem.swift
//  tutorialTodo
//
//  Created by Eric on 6/8/14.
//  Copyright (c) 2014 Simple Guy. All rights reserved.
//

import UIKit

class XYZToDoItem: NSObject {
    var completed:Bool = false
    var name:String
//    var creationDate:NSDate
    
    init(name:String) {
//        creationDate = new NSDate()
        self.name = name
    }
}
