//
//  ViewController.swift
//  SampleApp
//
//  Created by Kashyap Bhatt on 02/04/20.
//  Copyright © 2020 Kashyap Bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textbox: UITextField!
    @IBOutlet weak var buttonNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.buttonNext.layer.cornerRadius = 8
        self.buttonNext.clipsToBounds = true
        
        self.textbox.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func clickedOnNext(_ sender: Any) {
        
        self.view.endEditing(true)
        
        if (textbox.text?.count != 10)
        {
            let controller = UIAlertController(title: "Error", message: "Please enter valid mobile number", preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in
                
            }))
            self.present(controller, animated: true, completion: nil)
        }
        else
        {
            let otpViewController =   self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
            
            self.navigationController?.pushViewController(otpViewController!, animated: true)
        }

    }
}

