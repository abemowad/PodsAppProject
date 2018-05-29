//
//  ViewController.swift
//  Pods
//
//  Created by Abe Mowad on 5/8/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import UIKit

class LogInView: UIViewController
{
    @IBOutlet weak var owlsArt: UIImageView!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        owlsArt.image = UIImage(named: "owls.png")
        owlsArt.isHidden = false
        usernameText.placeholder = "username"
        passwordText.placeholder = "password"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToLogIn(segue: UIStoryboardSegue)
    {
        
    }

}

