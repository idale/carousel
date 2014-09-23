//
//  SettingViewController.swift
//  carousel_week2
//
//  Created by Ida Leung on 9/19/14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var settingScroll: UIScrollView!

    @IBOutlet weak var settingDismiss: UIButton!
    @IBOutlet weak var settingImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingScroll.contentSize =
            settingImage.frame.size
        

        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonReturn(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
