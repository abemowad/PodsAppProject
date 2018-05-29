//
//  Pod.swift
//  PodsApp
//
//  Created by Sam Wilson on 5/29/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import Foundation

class Pod {
    var name : String
    var location : String
    var members : [User]
    var image: String
    
    init( name: String, location: String, members: [User], image: String) {
        self.name = name
        self.location = location
        self.members = members
        self.image = image
    }
}
