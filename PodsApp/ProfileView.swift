//
//  ProfileView.swift
//  PodsApp
//
//  Created by Sam Wilson on 5/28/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//
import UIKit

class MainProfileView : UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var BioLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToMainProfile(segue: UIStoryboardSegue)
    {
        
    }

    
}
