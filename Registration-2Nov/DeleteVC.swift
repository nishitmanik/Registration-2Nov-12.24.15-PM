//
//  DeleteVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 22/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit
import FirebaseAuth
import Kingfisher


class DeleteVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblEmail: UILabel!
    
    
    

    @IBAction func btnDelete(_ sender: UIButton) {
        
        Auth.auth().currentUser?.delete(completion: { error in
                    if let err = error {
                        print("Error signing out: \(err.localizedDescription)")
                        showAlert(title: "Error Loging out", message: error!.localizedDescription, ViewController: self)
                    } else {
                        self.navigationController?.popViewController(animated: true)
                    }
                })
                
            
    }
    
        
    @IBAction func logoutbtn(_ sender: UIButton) {
            
        do {
                    try Auth.auth().signOut()
                    self.navigationController?.popViewController(animated: true)
                } catch {
                    print("Error signing out: \(error.localizedDescription)")
                    showAlert(title: "Error Loging out", message: error.localizedDescription, ViewController: self)
                }
            
        }
    
    @IBAction func btnprofile(_ sender: UIButton) {
        
        if let user = Auth.auth().currentUser {
                        // Access user properties
                        let uid = user.uid
                        let email = user.email
                        
            
                        
                        
                        lblName.text = " \(uid)"
                        lblEmail.text = " \(email ?? "No Email")"
                        
                       
                    } else {
                        
                        lblName.text = "Not logged in"
                        lblEmail.text = "Notlogged in "
                    }
                }
        
    }
    
//    if let user = Auth.auth().currentUser {
//                // Access user properties
//                let uid = user.uid
//                let email = user.email
//
//                // Update labels with user data
//                lblName.text = "UID: \(uid)"
//                lblEmail.text = "Email: \(email ?? "No Email")"
//            } else {
//                // Handle the case where the user is not logged in or there is no user data
//                lblName.text = "Not logged in"
//                lblEmail.text = ""
//            }
//        }
//    
    

