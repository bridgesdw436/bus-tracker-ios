//
//  ViewController.swift
//  Bus Tracker
//
//  Created by Jamone Kelly on 3/29/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class OnboardController: UIViewController {
    @IBOutlet weak var onboardLabel: UILabel!
    @IBOutlet weak var adminButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
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

