//
//  Main.swift
//  Bounce
//
//  Created by Mav3r1ck on 8/31/14.
//  Copyright (c) 2014 Mav3r1ck. All rights reserved.
//

import UIKit

class Main: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    func insertBlurView (view: UIView, style: UIBlurEffectStyle) {
        view.backgroundColor = UIColor.clearColor()
        
        var blurEffect = UIBlurEffect(style: style)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.insertSubview(blurEffectView, atIndex: 0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    insertBlurView(imageView,style: UIBlurEffectStyle.Light)
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
