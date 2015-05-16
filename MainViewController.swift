//
//  MainViewController.swift
//  LoginProject
//
//  Created by Asitha Rodrigo on 15/05/2015.
//  Copyright (c) 2015 Twig. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userPasswordLabel: UILabel!
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        userNameLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as? String
        userPasswordLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kPassWordKey) as? String
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
