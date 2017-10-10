//
//  frame.swift
//  layoutApp
//
//  Created by ST5 on 9.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//


import UIKit

func uiFrameSize (frame uiFrame: CGRect, isPortrail: Bool,x originX: CGFloat,y originY: CGFloat) -> CGRect {
    var viewInfo = uiFrame
    let boxSizes = boxSize()
    
    viewInfo.origin.x = originX
    viewInfo.origin.y = originY
    
    if isPortrail == true {
        viewInfo.size.width = boxSizes.width
        viewInfo.size.height = boxSizes.height
    }  else {
        viewInfo.size.width = boxSizes.width
        viewInfo.size.height = boxSizes.height
    }
    
    return viewInfo
    
}
