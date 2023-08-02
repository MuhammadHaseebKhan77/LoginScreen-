
import UIKit

class loginTableViewController: UITableViewController {
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
       func validateEmailId(email: String, password: String) -> Bool {
           let validEmail = "user@example.com"
           let validPassword = "password"
           return email == validEmail && password == validPassword
       }
       
       func validatePassword(_ password: String) -> Bool {
           // Password must have at least 8 characters
           if password.count < 8 {
               return false
           }
           
           // Additional password validation rules can be added here if needed
           
           return true
       }
       
       @IBAction func loginButtonPressed(_ sender: Any) {
           if let email = emailtxt.text, let password = passwordtxt.text {
               if validateEmailId(email: email, password: password) {
                   // Email and password are valid, perform login process here
                   showSuccessAlert()
               } else {
                   // Invalid email or password, show an error alert
                   showErrorAlert(message: "Invalid email or password.")
               }
           }
       }
       
       func showSuccessAlert() {
           let alertController = UIAlertController(title: "Success", message: "Login Successful!", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           alertController.addAction(okAction)
           present(alertController, animated: true, completion: nil)
       }
       
       func showErrorAlert(message: String) {
           let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           alertController.addAction(okAction)
           present(alertController, animated: true, completion: nil)
       }
   }
