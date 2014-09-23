//
//  CreateAccountViewController.swift
//  carousel_week2
//
//  Created by Ida Leung on 9/21/14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var selectTermBox: UIButton!
    @IBOutlet weak var createScroll: UIScrollView!
    
    @IBAction func selectTerms(sender: UIButton) {
        selectTermBox.selected = !selectTermBox.selected
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            createScroll.contentSize = CGSize(width: 320, height: 568)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    @IBAction func termsURL(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.dropbox.com/terms?mobile=1"))
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
            
            self.createScroll.contentOffset.y = kbSizeP/2.5
            
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
            
            self.createScroll.contentOffset.y = 0
            
            
            
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
