//
//  ImagePickerVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 30/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit


class ImagePickerVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    

    @IBOutlet weak var ImgView: UIImageView!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var BtnSuccess: UIButton!
    @IBOutlet weak var imageSucess: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImgView.isHidden = true
        pickerView.delegate = self
        pickerView.dataSource = self

    }
    
    var images = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
    var names = ["Image1","Image2","Image3","Image4","Image5","Image6","Image7","Image8","Image9","Image10","Image11","Image12","Image13"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return names.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return names[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let imageName = images[row]
        
        if let image = UIImage(named: imageName)
        {
            ImgView.image = image
            imageSucess.isHidden = false
            
        }
        
    }
    
    
    @IBAction func openImagePicker(_ sender: UIButton) {

        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NameVC") as! NameVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
