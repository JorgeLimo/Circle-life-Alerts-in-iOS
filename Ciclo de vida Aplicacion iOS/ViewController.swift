//
//  ViewController.swift
//  Ciclo de vida Aplicacion iOS
//
//  Created by Alumno on 9/02/17.
//  Copyright © 2017 JorgeLimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numero = 0
    @IBOutlet weak var lblLabel: UILabel!
    
    //Solo se ejecuta una vez, cuando carga la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("ViewController : viewDidLoad()")
    }

    //Se ejecuta cuando hay una alerta de memoria del equipo
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Se ejecuta luego de la carga de la vista
    override func viewDidAppear(_ animated: Bool) {
        numero  = 3
        print("ViewController : viewDidAppear()")
        lblLabel.text = "\(numero)"

    }
    
    //Se ejecuta cuando regresa la vista luego de cerrarla.
    override func viewWillAppear(_ animated: Bool) {
        numero  = 4
        print("ViewController : viewWillAppear()")
        lblLabel.text = "\(numero)"
    }
    
    //Se ejecuta luego que la vista sea eliminada
    override func viewWillDisappear(_ animated: Bool) {
        numero  = 5
        print("ViewController : viewWillDisappear()")
        lblLabel.text = "\(numero)"
    }
    


}

