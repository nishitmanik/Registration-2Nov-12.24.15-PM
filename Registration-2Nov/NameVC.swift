//
//  NameVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 01/12/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit

class NameVC: UIViewController {
    @IBOutlet weak var TxtName: UITextField!
    
    @IBOutlet weak var BtnSubmit: UIButton!
    
    var updateName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TxtName.layer.borderWidth = 3
        TxtName.clipsToBounds = true
        TxtName.layer.borderColor = 	UIColor.systemPink.cgColor
        TxtName.layer.cornerRadius = 20
        
        BtnSubmit.clipsToBounds = true
        BtnSubmit.layer.cornerRadius = 20

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        if !updateName.isEmpty{
            
            TxtName.text = updateName
        }
    }
    
    
    
    
    
    @IBAction func BtnSubmit(_ sender: UIButton) {
        if TxtName.text == ""{
        showAlert(title: "Error", message: "Enter Valid name", ViewController: self)
        }
        else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "EditVC") as! EditVC
            vc.name = TxtName.text ?? ""
            vc.delegate = self
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
        }

}

extension NameVC: DataDelegate {
    func edit(data: String) {
        
        updateName = data
    }
    
    
}
