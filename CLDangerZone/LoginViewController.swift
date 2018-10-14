//
//  LoginViewController.swift
//  CLDangerZone
//
//  Created by Jae won Lee on 10/14/18.
//  Copyright © 2018 Rodrigo Baluyot ii. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var passcode: UITextField!
    @IBOutlet weak var emergencyContact: UITextField!
    
    @IBAction func `continue`(_ sender: UIButton) {

        
        performSegue(withIdentifier: "continueSegue", sender: fullName.text)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segue = segue.destination as! ViewController
        segue.user_logged_in = fullName.text
        print(segue.user_logged_in)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")

        
        view.addGestureRecognizer(tap)


        
    }

    

    //Calls this function when the tap is recognized.
    override func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    

    

}
