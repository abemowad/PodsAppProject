//
//  User.swift
//  PodsApp
//
//  Created by Sam Wilson on 5/29/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import Foundation

class User {
    
    var name : String
    var age : String
    var bio : String
    var image : String
    
    init( name: String, age: String, bio: String, image: String) {
        self.name = name
        self.age = age
        self.bio = bio
        self.image = image
    }
}
