//
//  ThreeViewController.swift
//  rideapp2
//
//  Created by Sukshith Shetty on 02/03/20.
//  Copyright © 2020 Sukshith Shetty. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    @IBOutlet weak var register: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register.layer.cornerRadius = register.frame.size.height/2
        register.layer.masksToBounds = true
        register.setGradient(colorOne: Colors.orange, colorTwo: Colors.brightOrange)
        
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
