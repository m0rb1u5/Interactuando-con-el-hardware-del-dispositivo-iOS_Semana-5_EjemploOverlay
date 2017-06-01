//
//  ViewController.swift
//  Interactuando-con-el-hardware-del-dispositivo-iOS_Semana-5_EjemploOverlay
//
//  Created by Juan Carlos Carbajal Ipenza on 1/06/17.
//  Copyright © 2017 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    let overlay = OverlayViewController(nibName: "OverlayViewController", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let miPicker = UIImagePickerController()
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            miPicker.delegate = self
            miPicker.sourceType = UIImagePickerControllerSourceType.camera
            miPicker.showsCameraControls = false
            miPicker.cameraOverlayView = self.overlay.view
            
            self.present(miPicker, animated: true, completion: nil)
        }
    }
}

