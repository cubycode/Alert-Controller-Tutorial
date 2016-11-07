//
//  ViewController.swift
//  AlertController
//
//  Created by FV iMAGINATION on 07/11/2016.
//  Copyright © 2016 FV iMAGINATION. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
override func viewDidLoad() {
        super.viewDidLoad()

}

    
    
   
// MARK: - ALERT CONTROLLER WITH 1 TEXT FIELD
@IBAction func fireAlert1(_ sender: Any) {

    let alert = UIAlertController(title: "AlertController Tutorial",
        message: "Submit something",
        preferredStyle: .alert)
    
    // Submit button
    let submitAction = UIAlertAction(title: "Submit", style: .default, handler: { (action) -> Void in
        // Get 1st TextField's text
        let textField = alert.textFields![0]
        print(textField.text!)
    })
    
    
    // Cancel button
    let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
    
    
    // Add 1 textField and cutomize it
    alert.addTextField { (textField: UITextField) in
        textField.keyboardAppearance = .dark
        textField.keyboardType = .default
        textField.autocorrectionType = .default
        textField.placeholder = "Type something here"
        textField.clearButtonMode = .whileEditing
        
    }
    
    
    // Add action buttons and present the Alert
    alert.addAction(submitAction)
    alert.addAction(cancel)
    present(alert, animated: true, completion: nil)
}
    
    
    
    
    
   
// MARK: - ALERT CONTRLOLLER WITH 2 TEXT FIELDS (USERNAME & PASSWORD)
@IBAction func fireAlert2(_ sender: Any) {
    
    let alert = UIAlertController(title: "Login example",
        message: "Insert username, password & phone No.",
        preferredStyle: .alert)
    
    // Login button
    let loginAction = UIAlertAction(title: "Login", style: .default, handler: { (action) -> Void in
        // Get TextFields text
        let usernameTxt = alert.textFields![0]
        let passwordTxt = alert.textFields![1]
        let phoneTxt = alert.textFields![2]
        
        print("USERNAME: \(usernameTxt.text!)\nPASSWORD: \(passwordTxt.text!)\nPHONE NO.: \(phoneTxt.text!)")
    })
    
    
    // Cancel button
    let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
    
    
    // Add 1 textField (for username)
    alert.addTextField { (textField: UITextField) in
        textField.keyboardAppearance = .dark
        textField.keyboardType = .default
        textField.autocorrectionType = .default
        textField.placeholder = "Type your username"
        textField.textColor = UIColor.green
    }
    
    
    // Add 2nd textField (for password)
    alert.addTextField { (textField: UITextField) in
        textField.keyboardAppearance = .dark
        textField.keyboardType = .default
        textField.placeholder = "Type your password"
        textField.isSecureTextEntry = true
        textField.textColor = UIColor.red
    }
    
    
    // Add 3rd textField (for phone no.)
    alert.addTextField { (textField: UITextField) in
        textField.keyboardAppearance = .dark
        textField.keyboardType = .numberPad
        textField.placeholder = "Type your phone no."
        textField.textColor = UIColor.blue
        textField.font = UIFont(name: "AmericanTypewriter", size: 14)
    }
    
    
    // Add action buttons and present the Alert
    alert.addAction(loginAction)
    alert.addAction(cancel)
    present(alert, animated: true, completion: nil)
    
}
    
    

    
    
    
    
// MARK: - ALERT CONTROLLER WITH MULTIPLE BUTTONS & SOME RESTYLING
@IBAction func fireAlert3(_ sender: Any) {
    let alert = UIAlertController(title: "",
        message: "",
        preferredStyle: .alert)
    
    // Change font of the title and message
    let titleFont:[String : AnyObject] = [ NSFontAttributeName : UIFont(name: "AmericanTypewriter", size: 18)! ]
    let messageFont:[String : AnyObject] = [ NSFontAttributeName : UIFont(name: "HelveticaNeue-Thin", size: 14)! ]
    let attributedTitle = NSMutableAttributedString(string: "Multiple buttons", attributes: titleFont)
    let attributedMessage = NSMutableAttributedString(string: "Select an Action", attributes: messageFont)
    alert.setValue(attributedTitle, forKey: "attributedTitle")
    alert.setValue(attributedMessage, forKey: "attributedMessage")
   
    
    let action1 = UIAlertAction(title: "Action 1", style: .default, handler: { (action) -> Void in
        print("ACTION 1 selected!")
    })

    let action2 = UIAlertAction(title: "Action 2", style: .default, handler: { (action) -> Void in
        print("ACTION 2 selected!")
    })

    let action3 = UIAlertAction(title: "Action 3", style: .default, handler: { (action) -> Void in
        print("ACTION 3 selected!")
    })

    
    // Cancel button
    let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
    

    // Restyle the view of the Alert
    alert.view.tintColor = UIColor.brown  // change text color of the buttons
    alert.view.backgroundColor = UIColor.cyan  // change background color
    alert.view.layer.cornerRadius = 25   // change corner radius

    
    // Add action buttons and present the Alert
    alert.addAction(action1)
    alert.addAction(action2)
    alert.addAction(action3)
    alert.addAction(cancel)
    present(alert, animated: true, completion: nil)
}
    
    
    
    
    
    
    
    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}

