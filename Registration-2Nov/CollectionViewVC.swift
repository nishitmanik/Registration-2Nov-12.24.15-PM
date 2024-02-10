//
//  CollectionViewVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 30/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit

class CollectionViewVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        CollectionView.delegate = self
        CollectionView.dataSource = self
       
    }
   
    var ImgArr = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
//    var Itemlbl = ["Virtual Reaility","Cyber-Security","Ethical Hacking","Big Data","Augmented Reaility","Machine Learning","Legal Documents","Taxation","Cyber Crime","Musicals Masters","Ethical Hacking","Market Stratergy","Bussiness Platforms"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImgArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.img.image = UIImage(named: ImgArr[indexPath.row])
        //cell.lbl.text = Itemlbl[indexPath.row]
        
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = CollectionView.bounds.width/2-30
        let height = width + (width * 0.33)
        
        
        return CGSize(width: width, height: height)
    }

    @IBAction func BtnSuccss(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TableViewVC") as! TableViewVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
   
}
