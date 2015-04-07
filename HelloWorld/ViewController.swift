//
//  ViewController.swift
//  HelloWorld
//
//  Created by KhanhPhung on 4/4/15.
//  Copyright (c) 2015 Online Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

