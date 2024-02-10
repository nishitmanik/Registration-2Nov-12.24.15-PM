//
//  TableViewVC.swift
//  Registration-2Nov
//
//  Created by Softs Solution on 30/11/23.
//  Copyright © 2023 com.softsolution. All rights reserved.
//

import UIKit

class TableViewVC: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var BtnAdd: UIButton!
    
    @IBOutlet weak var BtnDelete: UIButton!
    var array = ["Akash","Aman","Kiran","Surya","Virat","Rohit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TableView.reloadData()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.lbl.text = array[indexPath.row]
        
    return cell
        
    }
    
    @IBAction func BtnAdd(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Add Item", message: "Enter a new item", preferredStyle: .alert)

           alertController.addTextField { (textField) in
               textField.placeholder = "Item"
           }

           let addAction = UIAlertAction(title: "Add", style: .default) { [weak self] (_) in
               guard let self = self, let newItem = alertController.textFields?.first?.text else {
                   return
               }

               // Add the new item to the array
               self.array.append(newItem)

               // Reload the table view to reflect the changes
              self.TableView.reloadData()
           }

           let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

           alertController.addAction(addAction)
           alertController.addAction(cancelAction)

        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func BtnDelete(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Delete Item", message: "Are you sure you want to delete the selected item?", preferredStyle: .alert)

                let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { [weak self] (_) in
                    guard let self = self, let selectedRow = self.TableView.indexPathForSelectedRow else {
                        return
                    }

                    // Remove the selected item from the array
                    self.array.remove(at: selectedRow.row)

                    // Reload the table view to reflect the changes
                    self.TableView.reloadData()
                }

                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

                alertController.addAction(deleteAction)
                alertController.addAction(cancelAction)

                present(alertController, animated: true, completion: nil)
            }
        
        


}
