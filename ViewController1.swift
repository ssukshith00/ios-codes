//
//  ViewController.swift
//  rideapp2
//
//  Created by Sukshith Shetty on 02/03/20.
//  Copyright © 2020 Sukshith Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var pagecontrol1: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        pagecontrol1.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
        
        // transform the scale of the current subview dot, adjust the scale as required, but bigger the scale value, the downward the dots goes from its centre.
        // You can adjust the centre anchor of the selected dot to keep it in place approximately.
        
      //  let centreBeforeScaling = self.pagecontrol1.subviews[self.pagecontrol1.currentPage].center
        
        self.pagecontrol1.subviews[self.pagecontrol1.currentPage].transform = CGAffineTransform(scaleX: 5, y: 5)
        
        
        // Reposition using autolayout
        
        self.pagecontrol1.subviews[self.pagecontrol1.currentPage].translatesAutoresizingMaskIntoConstraints = false
        
        self.pagecontrol1.subviews[self.pagecontrol1.currentPage].centerYAnchor.constraint(equalTo: self.pagecontrol1.subviews[0].centerYAnchor , constant: 0)
        
        self.pagecontrol1.subviews[self.pagecontrol1.currentPage].centerXAnchor.constraint(equalTo: self.pagecontrol1.subviews[0].centerXAnchor , constant: 0)
    self.pagecontrol1.subviews[self.pagecontrol1.currentPage].transform = CGAffineTransform(scaleX: 2, y: 2)

        // Do any additional setup after loading the view, typically from a nib.
    }


}

