//
//  SignInViewController.swift
//  Carousel
//
//  Created by Jenna Pascual on 10/20/14.
//  Copyright (c) 2014 Jenna Pascual. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var inputsView: UIImageView!
    
    @IBAction func signInButton(sender: AnyObject) {
        if emailField.text.isEmpty {
            var alertView = UIAlertView(title: "Error", message: "Please enter your email and password.", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
    
        } else if passwordField.text.isEmpty {
            var alertView = UIAlertView(title: "Incorrect Email or Password", message: "Please re-enter your email and password.", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        } else {
            activityIndicator.startAnimating()
            // Delay for 2 seconds, then run the code between the braces.
            delay(2) {
                self.checkPassword()
            }
        }
    }
    func checkPassword(){
        if emailField.text == "jenna@gmail.com" && passwordField.text == "jenna"{
        performSegueWithIdentifier("signInSuccessful", sender: self)
            
            
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
        
    }
    
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
