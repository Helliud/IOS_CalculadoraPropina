//
//  ViewController.swift
//  Calculadora_
//
//  Created by Alumno on 8/7/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func doChangeValores(_ sender: Any) {
        
        var porcentajePropina = 0.0
        porcentajePropina = Double(sldPorcentajePropina.value)
        porcentajePropina.round()
        lblPorcenajePropina.text = "\(porcentajePropina)%"
        porcentajePropina = porcentajePropina / 100.0
        
        var cantidadPropina = 0.0
        cantidadPropina = Double(txtTotalSinPropina.text!)! * porcentajePropina
        
        lblPorcenajePropina.text = "$\(cantidadPropina)"
        
        let totalConPropina = Double(txtTotalSinPropina.text!)! + cantidadPropina
        lblPorcenajePropina.text = "$\(totalConPropina)"
    }
    
    @IBOutlet weak var txtTotalSinPropina: UITextField!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var lblPorcenajePropina: UILabel!
    @IBOutlet weak var lblTotalSinPropina: UILabel!
    @IBOutlet weak var lblTotalConPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

