//
//  SignInViewController.swift
//  carousel_week2
//
//  Created by Ida Leung on 9/18/14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var signInScrollView: UIScrollView!
    
    @IBAction func signInTap(sender: AnyObject) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
       // keyboardWillHide(notification: NSNotification!)
    }
    
    @IBAction func onSignIn(sender: UIButton) {
        
        if (emailTextField.text == "me") && (passwordTextField.text == "pass") {
            var myAlertView = UIAlertView()
            myAlertView.title = "Signing In"
            myAlertView.show()
            println("yup")
            
            delay(1, closure: { () -> () in
                
                self.performSegueWithIdentifier("signInSegue", sender: self)
                myAlertView.dismissWithClickedButtonIndex(0, animated: true)
                
            })
        } else if (emailTextField.text.isEmpty) && (passwordTextField.text.isEmpty){
            var alertView = UIAlertView(title: "Email Required", message: "Please enter your email address", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            //alertView.dismissWithClickedButtonIndex(0, animated: true)
        
        } else {
            var myAlertView = UIAlertView()
            myAlertView.title = "Signing In"
            myAlertView.show()
            println("why")
            delay(2, closure: { () -> () in
                myAlertView.dismissWithClickedButtonIndex(0, animated: true)
                var alertView = UIAlertView(title: "Sign In Failed", message: "Incorrect email or password", delegate: self, cancelButtonTitle: "Try Again")
                alertView.show()
                //alertView.dismissWithClickedButtonIndex(0, animated: true)
                
                self.emailTextField.text = ""
                self.passwordTextField.text = ""
            
                println("okay")

            })
            
        }
        

        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        println("show keyboard")
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        var kbSizeP : CGFloat! = CGFloat(kbSize.height)
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            self.signInScrollView.contentOffset.y = kbSizeP/2
            
           // self.signInScrollView.frame = CGRectMake(self.signInScrollView.frame.origin.x, -kbSizeP, self.signInScrollView.frame.size.width, self.signInScrollView.frame.size.height)
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)



        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        println("keyboard hidden")
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        var kbSizeP : CGFloat! = CGFloat(kbSize.height)
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            self.signInScrollView.contentOffset.y = 0
            
            
            
          //  self.signInScrollView.frame = CGRectMake(self.signInScrollView.frame.origin.x, kbSizeP, self.signInScrollView.frame.size.width, self.signInScrollView.frame.size.height)
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
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
