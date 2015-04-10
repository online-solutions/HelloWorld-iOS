//
//  ViewController.swift
//  HelloWorld
//
//  Created by KhanhPhung on 4/4/15.
//  Copyright (c) 2015 Online Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView:UIImageView = UIImageView()
    var backgroundDict: Dictionary<String, String> = ["Background1": "background1", "Background2": "background2"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width:CGFloat = 320
        let height: CGFloat = 568
        
        backgroundDict = ["Background1": "background1", "Background2": "background2"]
        
        var buttonTitles = ["Backround 1", "Background 2"]
        
        var view:UIView = UIView(frame: CGRectMake(0, 0, width, height))
        
        self.view.addSubview(view)
        
        var backgroundImage:UIImage? = UIImage(named:backgroundDict["Background1"]!)
        
        imageView = UIImageView(frame: view.frame)
        
        imageView.image = backgroundImage
        
        view.addSubview(imageView)
        
        for i in 0 ... buttonTitles.count - 1{
            var button:UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
            
            button.frame = CGRectMake(0, 0, 200, 20)
            
            button.center = CGPointMake(view.center.x, CGFloat(100+i*50))
            
            button.setTitle(buttonTitles[i], forState: UIControlState.Normal)
            
            button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            
            button.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
            
            button.tag = i + 1
            view.addSubview(button)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(){
        var a = 12
        var b:String! = "7"
        var c = a + b.toInt()!
        
        let alertController = UIAlertController(title: "Welcome to my first app", message: "Hello World - " + String(c) , preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}

