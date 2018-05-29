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
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad()
    {
        imageView.image = UIImage(named: "profile.jpg")
        imageView.isHidden = false
        nameLabel.text = "Lilja"
        ageLabel.text = "19"
        BioLabel.text = "California grown, love to cook and keep things clean. Younger sibling at heart."
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
