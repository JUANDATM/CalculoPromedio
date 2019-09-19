//
//  ViewControlleraprobado.swift
//  CalculoDePromedio
//
//  Created by Daniel Torres Moreno on 9/8/19.
//  Copyright © 2019 Daniel Torres Moreno. All rights reserved.
//

import UIKit

class ViewControlleraprobado: UIViewController {
    
    var Prom : Double!
    @IBOutlet weak var lblProm: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblProm.text = "Estas Aprobado , tu Promedio es de: \(String(Prom))"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
