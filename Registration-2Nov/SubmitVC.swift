//
//  SubmitVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 30/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit

class SubmitVC: UIViewController {

    @IBOutlet weak var TxtName: UITextField!
    
    @IBOutlet weak var BtnSubmit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BtnSubmit.layer.cornerRadius = 20
        
        TxtName.layer.cornerRadius = 20
        TxtName.layer.borderColor = UIColor.systemPink.cgColor
        TxtName.layer.borderWidth = 4
        
    }
    
    
    

    
   

}
