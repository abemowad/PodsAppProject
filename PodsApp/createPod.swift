//
//  createPodViewController.swift
//  PodsApp
//
//  Created by Sam Wilson on 5/29/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import UIKit

class createPod: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var membersField: UITextField!
    @IBOutlet weak var imageField: UITextField!
    
    var newPod : Pod?
    var newMem : [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        newMem.append(User.init(name: membersField.text!, age: membersField.text!, bio: membersField.text!, image: membersField.text!))
        self.newPod = Pod.init(name: nameField.text!, location: locationField.text!, members: newMem, image: imageField.text!)
    }
}
