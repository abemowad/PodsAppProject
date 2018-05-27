//
//  HomeTabView.swift
//  Pods
//
//  Created by Abe Mowad on 5/17/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import UIKit

class HomeTabView : UIViewController
{
    /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        return
    }*/
    
    @IBOutlet weak var savedHomesSeg: UIView!
    @IBOutlet weak var searchHomesSeg: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showComponent(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            UIView.animate(withDuration: 0.5, animations:
            {
                self.savedHomesSeg.alpha = 1
                self.searchHomesSeg.alpha = 0
            })
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
            {
                self.savedHomesSeg.alpha = 0
                self.searchHomesSeg.alpha = 1
            })
        }
    }
}
