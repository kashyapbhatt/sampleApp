//
//  SecondViewController.swift
//  SampleApp
//
//  Created by Kashyap Bhatt on 02/04/20.
//  Copyright © 2020 Kashyap Bhatt. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var buttonPrevious: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.buttonPrevious.layer.cornerRadius = 8
        self.buttonPrevious.clipsToBounds = true
    }
    

    @IBAction func clickedOnPrevious(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
