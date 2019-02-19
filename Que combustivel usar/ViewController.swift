//
//  ViewController.swift
//  Que combustivel usar
//
//  Created by andre on 18/02/19.
//  Copyright © 2019 andre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stringAlcool: UITextField!
    @IBOutlet weak var stringGasolina: UITextField!
    @IBOutlet weak var lblResultString: UILabel!
    
    
    @IBAction func btnCalcMelhorCombustivel(_ sender: Any) {
        
        if stringGasolina.text!.isEmpty || stringGasolina.text!.isEmpty{
            lblResultString.text = "Digite os valores"
        }else{
            let strCombustivel = calculeMelhorCombustivel(alcool: stringAlcool.text!, gasolina: stringGasolina.text!)
            
            lblResultString.text = strCombustivel
        }
        
    }
    
    func calculeMelhorCombustivel(alcool: String, gasolina:String) -> String {
        let intAlcool = Double(alcool)
        let intGasolina = Double(gasolina)
        
        let divisionCombustivel: Double =  intAlcool! / intGasolina!
        
        if divisionCombustivel < 0.7{
            return "Melhor usar alcool"
        }
        
        return "Melhor usar gasolina"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

