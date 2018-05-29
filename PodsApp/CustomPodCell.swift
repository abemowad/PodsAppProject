//
//  CustomPodCellTableViewCell.swift
//  PodsApp
//
//  Created by Sam Wilson on 5/29/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import UIKit

class CustomPodCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var membersLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
