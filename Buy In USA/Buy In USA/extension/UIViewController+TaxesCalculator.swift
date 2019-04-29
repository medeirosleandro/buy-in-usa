//
//  UIViewController+TaxesCalculator.swift
//  Buy In USA
//
//  Created by Leandro Roberto Medeiros on 28/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    var tc: TaxesCalculator{
        return TaxesCalculator.shared
    }
}
