//
//  FeedViewController.swift
//  carousel_week2
//
//  Created by Ida Leung on 9/18/14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var feedScroll: UIScrollView!
    
    @IBOutlet weak var feedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //feedScroll.contentSize = feedImage.image!.size
        
        feedScroll.contentSize = feedImage.frame.size
        
        //feedScroll.contentInset = UIEdgeInsets (top: -20, left: 0, bottom: 0, right: 0)

        // Do any additional setup after loading the view.
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
