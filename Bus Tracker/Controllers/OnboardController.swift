//
//  ViewController.swift
//  Bus Tracker
//
//  Created by Jamone Kelly on 3/29/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit
import Pastel

class OnboardController: UIViewController {
    @IBOutlet weak var onboardLabel: UILabel!
    @IBOutlet weak var adminButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pastelView = PastelView(frame: view.bounds)
        
        // Custom Direction
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView.animationDuration = 3.0
        
        // Custom Color
        pastelView.setColors([UIColor(red:0.23, green:0.47, blue:0.92, alpha:1.0),
                              UIColor(red:0.43, green:0.60, blue:0.87, alpha:1.0)])
        
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignInAction(_ sender: Any) {
        self.performSegue(withIdentifier: "onboard2signin", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    

}

