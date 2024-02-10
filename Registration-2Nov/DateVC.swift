import UIKit

class DateVC: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var lbl: UILabel!
   
    @IBOutlet weak var BtnDone: UIButton!
    
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "dd MMMM yyyy" // Corrected date format
        updateDateLabel(datePicker.date) // Corrected parameter name
    }
    
    
    
    func updateDateLabel(_ date: Date) { // Corrected parameter name
        let formattedDate = dateFormatter.string(from: date)
        lbl.text = formattedDate
    }
    
    @IBAction func selectDate(_ sender: UIDatePicker) { // Corrected parameter name
        updateDateLabel(sender.date) // Corrected parameter name
        
    }
    
    @IBAction func BtnSucess(_ sender: UIButton) {
        

        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ImagePickerVC") as! ImagePickerVC
        self.navigationController?.pushViewController(vc, animated: true)

            }
                
        
    }
    
    

