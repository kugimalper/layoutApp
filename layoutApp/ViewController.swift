//
//  ViewController.swift
//  layoutApp
//
//  Created by ST5 on 9.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var fisrtView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print (UIScreen.main.bounds.width)
        print (UIScreen.main.bounds.height)
        let boxSizes = boxSize()
        var viewInfo = fisrtView.frame
        var secondViewInfo = secondView.frame
        var thirdViewInfo = thirdView.frame
        var fourthViewInfo = fourthView.frame
       
        
        /* print("x eksenine olan uzaklık:  \(viewInfo.origin.x)")
        print("y eksenine olan uzaklık: \(viewInfo.origin.y)")
        print("genişlik: \(viewInfo.size.width)")
        print("yükseklik: \(viewInfo.size.height)")
        */
        
        
        
     
        
        viewInfo.origin.x = 20
        viewInfo.origin.y = 20
        viewInfo.size.width = boxSizes.width
        viewInfo.size.height = boxSizes.height
        fisrtView.frame = viewInfo
        
        secondViewInfo.origin.x = boxSizes.width + 40
        secondViewInfo.origin.y = 20
        secondViewInfo.size.width = boxSizes.width
        secondViewInfo.size.height = boxSizes.height
        secondView.frame = secondViewInfo
        
        thirdViewInfo.origin.x = 20
        thirdViewInfo.origin.y = boxSizes.height + 40
        thirdViewInfo.size.width = boxSizes.width
        thirdViewInfo.size.height = boxSizes.height
        thirdView.frame = thirdViewInfo
        
        fourthViewInfo.origin.x = boxSizes.width + 40
        fourthViewInfo.origin.y = boxSizes.height + 40
        fourthViewInfo.size.width = boxSizes.width
        fourthViewInfo.size.height = boxSizes.height
        fourthView.frame = fourthViewInfo
       
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            print ("sola veya sağa çevrildi")
            
        } else {
            print (" walla dik")
        }
    }
    
    override func viewWillLayoutSubviews() {
        if UIDevice.current.orientation == .landscapeLeft || UIDevice.current.orientation == .landscapeRight {
            print( " çevrildi")
        } else {
            print(" yok olmadı")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

