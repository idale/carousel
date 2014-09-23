//
//  IntroViewController.swift
//  carousel_week2
//
//  Created by Ida Leung on 9/18/14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScroll: UIScrollView!
    
    @IBOutlet weak var introBackground: UIImageView!
   
    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIImageView!
    @IBOutlet weak var tile5: UIImageView!
    @IBOutlet weak var tile6: UIImageView!
    
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    func transformView(view : UIView!, atIndex index : Int, offset : Float){
    }
    
    func updateViewTransformWithOffset(offset : Float){
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScroll.contentSize = introBackground.frame.size
        introScroll.delegate = self
        
        var offset = Float(introScroll.contentOffset.y)
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -70, r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tile1.transform = CGAffineTransformScale(tile1.transform, CGFloat(scale), CGFloat(scale))
        tile1.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 60, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2.transform = CGAffineTransformScale(tile2.transform, CGFloat(scale2), CGFloat(scale2))
        tile2.transform = CGAffineTransformRotate(tile2.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 20, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -430, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3.transform = CGAffineTransformScale(tile3.transform, CGFloat(scale3), CGFloat(scale3))
        tile3.transform = CGAffineTransformRotate(tile3.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 100, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4.transform = CGAffineTransformScale(tile4.transform, CGFloat(scale4), CGFloat(scale4))
        tile4.transform = CGAffineTransformRotate(tile4.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -200, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -520, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5.transform = CGAffineTransformScale(tile5.transform, CGFloat(scale5), CGFloat(scale5))
        tile5.transform = CGAffineTransformRotate(tile5.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6.transform = CGAffineTransformScale(tile6.transform, CGFloat(scale6), CGFloat(scale6))
        tile6.transform = CGAffineTransformRotate(tile6.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
        //introScroll. sendSubviewToBack(introBackground)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(introScroll: UIScrollView!) {
        var offset = Float(introScroll.contentOffset.y)
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -70, r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tile1.transform = CGAffineTransformScale(tile1.transform, CGFloat(scale), CGFloat(scale))
        tile1.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 60, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2.transform = CGAffineTransformScale(tile2.transform, CGFloat(scale2), CGFloat(scale2))
        tile2.transform = CGAffineTransformRotate(tile2.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 20, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -430, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3.transform = CGAffineTransformScale(tile3.transform, CGFloat(scale3), CGFloat(scale3))
        tile3.transform = CGAffineTransformRotate(tile3.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 100, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4.transform = CGAffineTransformScale(tile4.transform, CGFloat(scale4), CGFloat(scale4))
        tile4.transform = CGAffineTransformRotate(tile4.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -200, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -520, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        tile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5.transform = CGAffineTransformScale(tile5.transform, CGFloat(scale5), CGFloat(scale5))
        tile5.transform = CGAffineTransformRotate(tile5.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6.transform = CGAffineTransformScale(tile6.transform, CGFloat(scale6), CGFloat(scale6))
        tile6.transform = CGAffineTransformRotate(tile6.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
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
