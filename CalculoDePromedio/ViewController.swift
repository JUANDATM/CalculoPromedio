//
//  ViewController.swift
//  CalculoDePromedio
//
//  Created by Daniel Torres Moreno on 9/8/19.
//  Copyright © 2019 Daniel Torres Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cal1 : Double = 0.0
    var cal2 : Double = 0.0
    var cal3 : Double = 0.0
    var cal4 : Double = 0.0
    var Prom : Double = 0.0

    
    
    
    @IBOutlet weak var lblCalcularPromedio: UILabel!
    
    @IBOutlet weak var txtCal1: UITextField!
    
    @IBOutlet weak var txtCal2: UITextField!
    
    @IBOutlet weak var txtCal3: UITextField!

    @IBOutlet weak var txtCal4: UITextField!
    

    
    @IBAction func btnCalcular(_ sender: UIButton) {
        if (txtCal1.text?.isEmpty)!{
             showAlerta(titulo: "Error", mensaje: "Ingrese la Calificacion 1")
        }else if (txtCal2.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Ingrese la Calificacion 2")
        }else if(txtCal3.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Ingrese la Calificacion 3")
        }else if (txtCal4.text?.isEmpty)!{
            showAlerta(titulo: "Error", mensaje: "Ingrese la Calificacion 4")
        }else {
            cal1 = Double(txtCal1.text!)!
            cal2 = Double(txtCal2.text!)!
            cal3 = Double(txtCal3.text!)!
            cal4 = Double(txtCal4.text!)!
            Prom = (cal1 + cal2 + cal3 + cal4)/4
            if(Prom>70){
                self.performSegue(withIdentifier: "segueaprobado", sender: self)
            }else{
                self.performSegue(withIdentifier: "seguereprobado", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func showAlerta(titulo: String, mensaje: String){
        //Crea La Alerta
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        //Agregar Un Boton
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
        //Muestra El Alerta
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueaprobado"){
            let segueProm = segue.destination as! ViewControlleraprobado
            segueProm.Prom = Prom
        }else if (segue.identifier == "seguereprobado"){
            let segueProm = segue.destination as! ViewControllerreprobado
            segueProm.Prom = Prom
        }
        }
    }

