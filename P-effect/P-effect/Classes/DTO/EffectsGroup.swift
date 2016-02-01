//
//  EffectsGroup.swift
//  P-effect
//
//  Created by Illya on 1/28/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

class EffectsGroup: PFObject {
    
    @NSManaged var image: PFFile
    static var onceToken: dispatch_once_t = 0
    
    var stickersRelation: PFRelation! {
        return relationForKey("stickersRelation")
    }
    
    override class func initialize() {
        dispatch_once(&onceToken) {
            self.registerSubclass()
        }
    }
    
}

extension EffectsGroup: PFSubclassing {
    
    class func parseClassName() -> String {
        return "EffectsGroup"
    }
    
}
