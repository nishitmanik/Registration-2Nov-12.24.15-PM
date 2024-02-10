//
//  ResetVC.swift
//  Registration-2Nov
//
//  Created by App on 21/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit
import FirebaseAuth
class ResetVC: UIViewController {
    @IBOutlet weak var Txtemail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnreset(_ sender: UIButton) {
        if Txtemail.text == "" {
                    showAlert(title: "Error", message: "Enter Email", ViewController: self)
                    
                }else {
                    Auth.auth().sendPasswordReset(withEmail: Txtemail.text!) { error in
                        if let err = error {
                            showAlert(title: "Error", message: err.localizedDescription, ViewController: self)
                        }
                        else  {
                            showAlert(title: "Success", message: "reset password mail sent", ViewController: self)

                            
                    }
                }
                
            }

        
    }
    
    

}
