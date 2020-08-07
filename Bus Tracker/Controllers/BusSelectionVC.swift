//
//  BusSelectionVC.swift
//  Bus Tracker
//
//  Created by Jamone Kelly on 4/19/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit
import Firebase

class BusSelectionVC: UIViewController {
    let busList = ["Bus 28", "Bus 380", "Bus 15"]
    @IBOutlet weak var busPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.busPickerView.delegate = self
        self.busPickerView.dataSource = self
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: nil)
    }
}

extension BusSelectionVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return busList[row]
    }
}

extension BusSelectionVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return busList.count
    }
}
