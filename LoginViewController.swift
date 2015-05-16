//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Asitha Rodrigo on 15/05/2015.
//  Copyright (c) 2015 Twig. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passworTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccount" {
            var createAccountVC = segue.destinationViewController as CreateAccountViewController
            createAccountVC.delegate = self
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("loginToMainSegue", sender: self)
        let usernameSavedFromNSUserDefaults: String = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as String
        println(usernameSavedFromNSUserDefaults)
        let passwordSavedFromNSUserDefaults: String = NSUserDefaults.standardUserDefaults().objectForKey(kPassWordKey) as String
        println(passwordSavedFromNSUserDefaults)
        
        if usernameTextField.text == usernameSavedFromNSUserDefaults && passworTextField.text == passwordSavedFromNSUserDefaults {
            self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
        }
    }
    
    
    @IBAction func createButtonAccountPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("loginToCreateAccount", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    //CreateAccountViewControllerDelegate
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }
}
