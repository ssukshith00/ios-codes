//
//  ViewController.swift
//  RideATC
//
//  Created by Royston Vishal Rodrigues on 28/02/20.
//  Copyright © 2020 Robosoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yes_button: UIButton!    
    @IBOutlet weak var no_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let yes = yes_button{
            yes.layer.cornerRadius = 20.0
            yes.layer.masksToBounds = true
        }
        if let no = no_button{
            no.layer.cornerRadius = 20.0
            no.layer.masksToBounds = true
        }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
    
@IBAction func give(_ sender: Any) {
        // let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        //let nextViewController = storyBoard.instantiateViewController(withIdentifier: "One") as! ViewController1
        self.present(nextViewController, animated:true, completion:nil)
    }
}

