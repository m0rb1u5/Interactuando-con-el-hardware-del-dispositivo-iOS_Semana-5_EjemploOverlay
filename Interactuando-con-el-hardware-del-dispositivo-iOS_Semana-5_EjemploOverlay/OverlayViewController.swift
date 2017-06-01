//
//  OverlayViewController.swift
//  Interactuando-con-el-hardware-del-dispositivo-iOS_Semana-5_EjemploOverlay
//
//  Created by Juan Carlos Carbajal Ipenza on 1/06/17.
//  Copyright © 2017 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit

class OverlayViewController: UIViewController {
    @IBOutlet weak var letrero: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func arriba() {
        self.letrero.text = "ARRIBA"
    }
    @IBAction func abajo() {
        self.letrero.text = "ABAJO"
    }
}
