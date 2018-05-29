//
//  PlacesTabBarController.swift
//  PodsApp
//
//  Created by Abe Mowad on 5/29/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import UIKit
import MapKit

class PlacesTabBarController: UITabBarController
{
    var mapRegion : MKCoordinateRegion?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let restVC = self.viewControllers![0] as! RestaurantsTableViewController
        let barsVC = self.viewControllers![1] as! BarsTableViewController
        let coffeeVC = self.viewControllers![2] as!
            CoffeeTableViewController
        
        restVC.mapRegion = mapRegion
        barsVC.mapRegion = mapRegion
        coffeeVC.mapRegion = mapRegion
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
