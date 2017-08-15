//
//  ViewController.swift
//  SwooshApp
//
//  Created by Justin Seymour on 2017/08/14.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Swoosh: UIImageView!
    @IBOutlet weak var BGbegin: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Swoosh.frame = CGRect(x: view.frame.size.width / 2 - view.frame.size.width / 2, y: 50 , width: Swoosh.frame.size.width , height: Swoosh.frame.size.width)
        
        BGbegin.frame = view.frame;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

