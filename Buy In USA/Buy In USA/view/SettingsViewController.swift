//
//  SettingsViewController.swift
//  Buy In USA
//
//  Created by Leandro Roberto Medeiros on 25/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfSalesTaxes: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfSalesTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")


    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func setValues(){
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tfSalesTaxes.text!)
    }

}


extension SettingsViewController: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
