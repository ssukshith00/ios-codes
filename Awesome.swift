//
//  Awesome.swift
//  rideapp2
//
//  Created by Sukshith Shetty on 04/03/20.
//  Copyright © 2020 Sukshith Shetty. All rights reserved.
//

import UIKit

class Awesome: UIViewController {

    @IBOutlet weak var play: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       play.layer.cornerRadius = play.frame.size.height/2
        play.layer.masksToBounds = true
        play.setGradient(colorOne: Colors.orange, colorTwo: Colors.brightOrange)
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
