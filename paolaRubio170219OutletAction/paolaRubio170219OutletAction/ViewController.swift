//
//  ViewController.swift
//  paolaRubio170219OutletAction
//
//  Created by Universidad Politecnica de gómez Palacio on 20/02/19.
//  Copyright © 2019 Universidad Politecnica de gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var txfFullName: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.txfFullName.text = "Paola Rubio Castro"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendData(_ sender: Any)
    {
        self.txfFullName.text = "Angel Yahir Rubio Carrillo"
    }
}

