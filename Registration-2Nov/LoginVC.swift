import UIKit
import FirebaseAuth

class LoginVC: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var login: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let arrayOfElements = [emailTxt, passTxt, login]

        for element in arrayOfElements {
            element?.layer.cornerRadius = 15
        }
    }

    @IBAction func Loginbtn(_ sender: UIButton) {
        guard let email = emailTxt.text, !email.isEmpty else {
            showAlert(title: "Error", message: "Enter Email", ViewController: self)
            return
        }

        guard let password = passTxt.text, !password.isEmpty else {
            showAlert(title: "Error", message: "Enter Password", ViewController: self)
            return
        }
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Delete") as! DeleteVC
//        self.present(nextViewController, animated:true, completion:nil)
//          self.navigationController?.pushViewController(nextViewController, animated: true)
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if authResult != nil {
                
                let vc = self?.storyboard?.instantiateViewController(withIdentifier: "DateVC") as! DateVC
                         self?.navigationController?.pushViewController(vc, animated: true)
                print("Log in done")
            } else if error != nil {
                // Show an alert for incorrect email or password
                showAlert(title: "Error", message: "Incorrect Email or Password", ViewController: strongSelf)
            }
        }
    }

    @IBAction func btnskip(_ sender: UIButton) {
        // Handle skip button action
    }

    
}
