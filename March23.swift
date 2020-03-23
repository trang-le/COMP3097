// AlertControllerApp
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
    let alert = UIAlertController(title: "Warning", message:
        "Zombies are loose!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default,
        handler: { action -> Void in
        //Just dismiss the action sheet
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        }   
}

//UIAlertController 
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
  let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)

   alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
   alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

   self.present(alert, animated: true)
    }

}


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
   let alert = UIAlertController(title: "Warning", message:
   "Zombies are loose!", preferredStyle: .alert)
   let okAction = UIAlertAction(title: "OK", style: .default,
   handler: { action -> Void in
   //Just dismiss the action sheet
   })
   alert.addAction(okAction)
   self.present(alert, animated: true, completion: nil)
    
}

}


//AlertControllerButtonsApp

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
    super.viewDidLoad()
    labelResult.numberOfLines = 0
    // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var labelResult: UILabel!
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
   let alert = UIAlertController(title: "Log In", message:
    "Enter Password", preferredStyle: .alert)
    alert.addTextField(configurationHandler: {(textField) in
    textField.placeholder = "Password here"
    textField.isSecureTextEntry = true
    })
    let okAction = UIAlertAction(title: "OK", style: .default,
    handler: { action -> Void in
    let savedText = alert.textFields![0] as UITextField
    self.labelResult.text = savedText.text
    })
    alert.addAction(okAction)
    self.present(alert, animated: true, completion: nil)
    }
    
}

//AlertControllerButtonsApp

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
         
     super.viewDidLoad()
     labelResult.numberOfLines = 0
     // Do any additional setup after loading the view, typically from a nib.
     }

    @IBOutlet weak var labelResult: UILabel!
    
     @IBAction func buttonTapped(_ sender: UIButton) {
   let alert = UIAlertController(title: "Warning", message:
    "Zombies are loose!", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default,
    handler: { action -> Void in
    self.labelResult.text = "OK"
    })
    let cancelAction = UIAlertAction(title: "Cancel", style:
    .cancel, handler: { action -> Void in
    self.labelResult.text = "Cancel"
    })
    let destroyAction = UIAlertAction(title: "Destroy", style:
    .destructive, handler: { action -> Void in
    self.labelResult.text = "Destroy"
    })
    alert.addAction(okAction)
    alert.addAction(cancelAction)
    alert.addAction(destroyAction)
    self.present(alert, animated: true, completion: nil)
    }
    let destroyAction = UIAlertAction(title: "Destroy", style:.destructive, handler: { action -> Void in
    self.labelResult.text = "Destroy"
    self.callFunctionOne()
    self.callFunctionTwo()
    })

    func callFunctionOne(){
    // Code here
    }

    func callFunctionTwo(){
    // Code here
  }

}


//AlertControllerTextFieldApp
import UIKit
class ViewController: UIViewController {
@IBOutlet var labelResult: UILabel!
override func viewDidLoad() {
super.viewDidLoad()
labelResult.numberOfLines = 0
// Do any additional setup after loading the view,
typically from a nib.
}
@IBAction func buttonTapped(_ sender: UIButton) {
let alert = UIAlertController(title: "Log In", message:
"Enter Password", preferredStyle: .alert)
alert.addTextField(configurationHandler: {(textField) in
textField.placeholder = "Password here"
textField.isSecureTextEntry = true
})
let okAction = UIAlertAction(title: "OK", style: .default,
handler: { action -> Void in
let savedText = alert.textFields![0] as UITextField
self.labelResult.text = savedText.text
})
alert.addAction(okAction)
self.present(alert, animated: true, completion: nil)
}
}

//DatePickerApp

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        // Do any additional setup after loading the view, typically from a nib.
    }
    func ShowAlert(dateTime : String) {
    let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default,
    handler: { action -> Void in
    //Just dismiss the action sheet
    })
    alert.addAction(okAction)
    self.present(alert, animated: true, completion: nil)
    }

    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from:
        sender.date)
        ShowAlert(dateTime: selectedDate)

    }
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from:
        myDatePicker.date)
        ShowAlert(dateTime: selectedDate)

    }  

}
