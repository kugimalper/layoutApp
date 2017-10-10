//
//  boxSize.swift
//  layoutApp
//
//  Created by ST5 on 9.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//


import UIKit
func  boxSize () -> ( width: CGFloat, height: CGFloat) {
  let   screenWidth = (UIScreen.main.bounds.width - 60) / 2
  let   screenHeight =  (UIScreen.main.bounds.height - 60) / 2
 
    print (UIScreen.main.bounds.width)
    return ( width: screenWidth, height : screenHeight)
}
