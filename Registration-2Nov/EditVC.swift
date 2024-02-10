//
//  EditVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 01/12/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

protocol DataDelegate: AnyObject {
    func edit(data:String)
}


import UIKit

class EditVC: UIViewController {

    @IBOutlet weak var TxtName: UITextField!
    
    @IBOutlet weak var BtnBack: UIButton!
    
    @IBOutlet weak var BtnConfirm: UIButton!
    
    var name = ""
    weak var delegate: DataDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        TxtName.layer.borderWidth = 3
        TxtName.clipsToBounds = true
        TxtName.layer.borderColor =     UIColor.systemPink.cgColor
        TxtName.layer.cornerRadius = 20
        
        
        BtnBack.clipsToBounds = true
        BtnBack.layer.cornerRadius = 20
        
        BtnConfirm.clipsToBounds = true
        BtnConfirm.layer.cornerRadius = 20
        
        TxtName.text = name
    
    }
    
    
    
    func sendDataTopreviousVC() {
        
        let dataToSend = TxtName.text ?? ""
        delegate?.edit(data: dataToSend)
        
        navigationController?.popViewController(animated: true)
    }

    @IBAction func ConfirmBtn(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CollectionViewVC") as! CollectionViewVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBAction func Backbtn(_ sender: UIButton) {
        
        sendDataTopreviousVC()
        
        
    }

    
}
