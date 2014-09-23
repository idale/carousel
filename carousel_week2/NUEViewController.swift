//
//  NUEViewController.swift
//  carousel_week2
//
//  Created by Ida Leung on 9/19/14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class NUEViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var nueScroll: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backupButton: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nueScroll.delegate = self
        
        nueScroll.contentSize = CGSize(width: 1280, height: 568)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if (page == 3) {
            UIImageView.animateWithDuration(0.5){self.backupButton.alpha = 1}
            UIImageView.animateWithDuration(0.5){self.pageControl.alpha = 0}
            
        }
        
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
