//
//  PodsVC.swift
//  PodsApp
//
//  Created by Sam Wilson on 5/29/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import Foundation
import UIKit

class PodsVC : UIViewController {
    var pods = [Pod]()
    
    @IBOutlet weak var podTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    @IBAction func doNothing(segue: UIStoryboardSegue){
        
    }
    @IBAction func createPod(segue: UIStoryboardSegue){
        
        let addPodVC = segue.source as! createPod
        self.pods.append(addPodVC.newPod!)
        self.podTableView.reloadData()
        /*
 let addViewController = segue.source as! AddViewController
 self.musicList.append(addViewController.song!)
 self.tableView.reloadData()
 updatePersistentStorage()
    */
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.pods.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
