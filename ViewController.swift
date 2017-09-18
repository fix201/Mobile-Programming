//
//  ViewController.swift
//  Example1a
//
//  Created by Olufisayo Ayodele on 9/6/17.
//  Copyright © 2017 Olufisayo Ayodele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var label : UILabel!
    @IBOutlet private var imageView : UIImageView!
    private var rand_num : Int
    
    required init?(coder aDecoder: NSCoder)
    {
        
        let res = false;
        rand_num = 0;
        //Initialize base class properties
        super.init(coder: aDecoder) //This can return a nil and stop the method!
        
        //Initialize your class's properties
        
        //If one data field is not set, you can return nil (Example of returning nil)
        if (res == false)
        {
            //return nil
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "UCA Bear"
        imageView.image = UIImage(named: "icon120.png")
        
        //Create an array of images
        var images = [UIImage]()
        images.append(UIImage(named: "icon120.png")!)
        images.append(UIImage(named: "target.png")!)
        
        imageView.animationImages = images
        imageView.animationDuration = 10
        imageView.animationRepeatCount = -1
        
        imageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

