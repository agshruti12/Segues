//
//  ViewController.swift
//  Segues
//
//  Created by Sumit K Agarwal on 7/18/20.
//  Copyright © 2020 Shruti Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //get the right segue
        if segue.identifier == "goToSecondScreen" {
            let destinationVC = segue.destination as? SecondViewController
            destinationVC?.textPassedOver = textField.text!
        }
    }

}

