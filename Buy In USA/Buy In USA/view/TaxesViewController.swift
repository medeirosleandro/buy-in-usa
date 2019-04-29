//
//  TaxesViewController.swift
//  Buy In USA
//
//  Created by Leandro Roberto Medeiros on 25/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTax: UILabel!
    @IBOutlet weak var lbStateTaxDescription: UILabel!
    @IBOutlet weak var lbIOFDescription: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lbReal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }

    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    
    func calculateTaxes(){
        lbStateTaxDescription.text = "Imposto do Estado(\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        lbIOFDescription.text = "IOF(\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        
        lbDolar.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "US$ ")
        lbStateTax.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US$ ")
        lbIOF.text = tc.getFormattedValue(of: tc.iofValue, withCurrency: "US$ ")
        
        let real = tc.calculate(usingCreditCard: swCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$ ")
        
    }

}
