//
//  AlertVc.swift
//  Registration-2Nov
//
//  Created by App on 21/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import Foundation
import UIKit

func showAlert(title t:String, message m:String, ViewController vc : UIViewController) {
    let alert = UIAlertController(title: t, message: m, preferredStyle: .alert)
    let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
    alert.addAction(alertAction)
    vc.present(alert, animated: true, completion: nil)
}
